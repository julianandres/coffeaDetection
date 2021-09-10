import mysql.connector
from mysql.connector import errorcode
import json
import numpy as np
from area import area
import requests
import time
task="fd418aeb-71f0-4851-bd77-ee99698b5ce8"
urlBase="http://localhost:8000/api/plugins/measure/task/"+task+"/volume"
baseUrlVolumeCheck=urlBase+"/check/"
baseUrlVolumeGet = urlBase+"/get/"
def obtenerVolumen(data):
   #print(data)
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
      "X-CSRFToken": "4TyRU8yMNHFow9luwrIGa4mzPVzVB4G4DjefoCpfb8YbKsu3iHUhG9IDoEDgbGXk",
      "Content-Type": "application/json",
      "Cookie": "csrftoken=4TyRU8yMNHFow9luwrIGa4mzPVzVB4G4DjefoCpfb8YbKsu3iHUhG9IDoEDgbGXk; sessionid=pk5yphdz82hf84whiknlszyv2els8kiq; AUTHJSESSIONID=4FCCCCA21BBD50EA179E49332FB27854"
      }
   #print(headers)
   print (json.dumps(obj))
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
             time.sleep(3)
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






def connectAndData(data):
  print(data)
  
  obj ={         "type": "Polygon",
                  "coordinates": [
                      data
                  ]
              }
  areasCalc=area(obj)
  volumenCalc=obtenerVolumen(data)
  data = json.dumps(data)
  if not volumenCalc == "":
    try:
      cnx = mysql.connector.connect(user='root',password="root", database="suite2")
      sql = "INSERT INTO plant (contorno,area,volumen) VALUES (%s,%s,%s)"
      val = "data"
      mycursor = cnx.cursor()
      mycursor.execute(sql,(data,areasCalc,volumenCalc))
      cnx.commit()

      print(mycursor.rowcount, "record inserted.")
    except mysql.connector.Error as err:
      if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
      elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
      else:
        print(err)
    else:
      cnx.close()

#connectAndData([[1],[1]])
data="[[-76.738585, 2.394883], [-76.738582, 2.394885], [-76.738582, 2.394885], [-76.738579, 2.394885], [-76.738577, 2.394885], [-76.738575, 2.394887], [-76.738573, 2.394888], [-76.738571, 2.394889], [-76.738569, 2.394889], [-76.73857, 2.394887], [-76.73857, 2.394884], [-76.738572, 2.394882], [-76.738573, 2.39488], [-76.738572, 2.394878], [-76.738572, 2.394875], [-76.738574, 2.394874], [-76.738574, 2.394873], [-76.738577, 2.394874], [-76.738579, 2.394874], [-76.738581, 2.394874], [-76.738582, 2.394875], [-76.738584, 2.394877], [-76.738584, 2.394879], [-76.738585, 2.394881], [-76.738585, 2.394883]]"

#data ="[[-76.738647,2.395176],[-76.738643,2.395178],[-76.738639,2.395175],[-76.738639,2.395169],[-76.738643,2.395169],[-76.738647,2.395174],[-76.738647,2.395176]]"
dataEx=json.loads(data)
#volumen=obtenerVolumen(dataEx)
connectAndData(dataEx)
#print("El Volumen Obtenido Es: "+volumen)

#polygon_area([],[])