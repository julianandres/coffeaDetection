import mysql.connector
from mysql.connector import errorcode
import json

cnx = mysql.connector.connect(user='root',password="root", database="suite2")
sql = "SELECT contorno,id FROM suite2.plant WHERE volumen>0.3 ;"
mycursor = cnx.cursor()

mycursor.execute(sql)


myresult = mycursor.fetchall()


values=[]
for x in myresult:
  #print(x[0])
  value = {
            "type": "Feature",
            "properties": {
                "Length": 10,
                "Area": 10
            },
            "geometry": {
                "type": "Polygon",
                "coordinates": [
                    json.loads(x[0])
                ]
            }
        }
  values.append(value)

finalValue = {
    "type": "FeatureCollection",
    "features": values
}

print(json.dumps(finalValue))