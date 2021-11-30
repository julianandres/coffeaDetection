from math import nan
from osgeo import osr, gdal
import mysql.connector
from mysql.connector import errorcode
import json
import numpy as np
from area import area
import requests
import time
from datetime import datetime



def plantArrayToString(plant):
  print(plant.tolist())

def connectAndData(data,ndvi,centro,positionL,dataStatistic,pointsImage,task,lote):
  
  obj ={         "type": "Polygon",
                  "coordinates": [
                      data
                  ]
              }
              # datetime object containing current date and time
  now = datetime.now()
  # dd/mm/YY H:M:S
  dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
  print("Inicio = %s "%positionL)
  print("time = %s "%dt_string)
  areasCalc=area(obj)
  volumenCalc=0#obtenerVolumen(pointsImage,task)
  data = json.dumps(data)
  centro = json.dumps(centro)
  pointsImage=json.dumps(pointsImage)
  print("Volumen")
  print(volumenCalc)
  if not volumenCalc == "":
    try:
      cnx = mysql.connector.connect(user='root',password="root", database="suite2")
      print("*Valores a Insertar*")
      sql = "INSERT INTO plant (contorno,area,volumen,ndvi_avg,centro,posicion_algoritmo,data_statistic,cod_lote,contorno_image_separated) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
      print(sql)
      mycursor = cnx.cursor()
      mycursor.execute(sql,(data,areasCalc,volumenCalc,ndvi,centro,positionL,dataStatistic,lote,pointsImage))
      cnx.commit()

      print(mycursor.rowcount, "record inserted.")
    except mysql.connector.Error as err:
      if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
      elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
      else:
        print(err)
    except:
       print("Error Python")
    else:
      cnx.close()
  now = datetime.now()
  # dd/mm/YY H:M:S
  dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
  print("FIN = %s "%positionL)
  print("time = %s "%dt_string)


def obtenerVolumen(data,task):
   #print(data)
   urlBase="http://localhost:8000/api/plugins/measure/task/"+task+"/volume"
   baseUrlVolumeCheck=urlBase+"/check/"
   baseUrlVolumeGet = urlBase+"/get/"
   obj= {
        "area": {
          "geometry": {
            "coordinates": [data],
            "type": "Polygon"
          },
          "properties": {},
          "type": "Feature"
        }
      }
   headers={
      "X-CSRFToken": "3LVEvpzIN99u1iT8OhJcZXVWReOiwiRxu4Z3xv83WeLndQLiWigmvpGnA4Fi3E9E",
      "Content-Type": "application/json",
      "Cookie": "AUTHJSESSIONID=681FFDFE03A0C0980792241E6015CA6D; csrftoken=3LVEvpzIN99u1iT8OhJcZXVWReOiwiRxu4Z3xv83WeLndQLiWigmvpGnA4Fi3E9E; sessionid=zqtao3m4h95pn9y48c01ba3asvjxnhdy"
      }
   #print(headers)
   taskIds= requests.post(urlBase,data=json.dumps(obj), headers=headers)
   if(taskIds.status_code == 200):
       print(taskIds.json()["celery_task_id"])
       taskCreate = taskIds.json()["celery_task_id"]
       waitToFinish = True
       print("Se ha creado la tarea con ID: "+taskCreate)
       print("Inicia consulta con URL: " + baseUrlVolumeCheck+taskCreate)
       while(waitToFinish):
          rtaVolStatus=requests.get(baseUrlVolumeCheck+taskCreate,headers=headers)
          print(rtaVolStatus)
          if(rtaVolStatus.status_code==200):
             rtaJson=rtaVolStatus.json()
             print(rtaJson)
             time.sleep(4)
             if("ready" in rtaJson and rtaJson["ready"]):
                print(rtaJson["ready"])
                rtaVol=requests.get(baseUrlVolumeGet+taskCreate,headers=headers)
                if(rtaVol.status_code==200):
                    rtaJson=rtaVol.json()
                    if("output" in rtaJson):
                        waitToFinish = False
                        return rtaJson["output"]
                    if("error" in rtaJson):
                        waitToFinish = True
                        return ""
                #waitToFinish=False





def pixel2coord(col, row,filename):
    # get the existing coordinate system
    ds = gdal.Open(filename)
    old_cs= osr.SpatialReference()
    old_cs.ImportFromWkt(ds.GetProjectionRef())

    # create the new coordinate system
    wgs84_wkt = """
    GEOGCS["WGS 84",
        DATUM["WGS_1984",
            SPHEROID["WGS 84",6378137,298.257223563,
                AUTHORITY["EPSG","7030"]],
            AUTHORITY["EPSG","6326"]],
        PRIMEM["Greenwich",0,
            AUTHORITY["EPSG","8901"]],
        UNIT["degree",0.01745329251994328,
            AUTHORITY["EPSG","9122"]],
        AUTHORITY["EPSG","4326"]]"""
    new_cs = osr.SpatialReference()
    new_cs .ImportFromWkt(wgs84_wkt)

    # create a transform object to convert between coordinate systems
    transform = osr.CoordinateTransformation(old_cs,new_cs) 

    #get the point to transform, pixel (0,0) in this case
    width = ds.RasterXSize
    height = ds.RasterYSize
    gt = ds.GetGeoTransform()
    minx = gt[0]
    miny = gt[3] + width*gt[4] + height*gt[5] 

    c, a, b, f, d, e = ds.GetGeoTransform()
    """Returns global coordinates to pixel center using base-0 raster index"""
    xp = a * col + b * row + a * 0.5 + b * 0.5 + c
    yp = d * col + e * row + d * 0.5 + e * 0.5 + f
    res =transform.TransformPoint(xp,yp) 
    return [res[0],res[1]]


data="[[-76.738585, 2.394883], [-76.738582, 2.394885], [-76.738582, 2.394885], [-76.738579, 2.394885], [-76.738577, 2.394885], [-76.738575, 2.394887], [-76.738573, 2.394888], [-76.738571, 2.394889], [-76.738569, 2.394889], [-76.73857, 2.394887], [-76.73857, 2.394884], [-76.738572, 2.394882], [-76.738573, 2.39488], [-76.738572, 2.394878], [-76.738572, 2.394875], [-76.738574, 2.394874], [-76.738574, 2.394873], [-76.738577, 2.394874], [-76.738579, 2.394874], [-76.738581, 2.394874], [-76.738582, 2.394875], [-76.738584, 2.394877], [-76.738584, 2.394879], [-76.738585, 2.394881], [-76.738585, 2.394883]]"

#data ="[[-76.738647,2.395176],[-76.738643,2.395178],[-76.738639,2.395175],[-76.738639,2.395169],[-76.738643,2.395169],[-76.738647,2.395174],[-76.738647,2.395176]]"
dataEx=json.loads(data)
#volumen=obtenerVolumen(dataEx)
#connectAndData(dataEx)