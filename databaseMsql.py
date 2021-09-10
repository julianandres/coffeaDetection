import mysql.connector
from mysql.connector import errorcode
import json
import numpy as np

def polygon_area(lats, lons, algorithm = 0, radius = 6378137):
    """
    Computes area of spherical polygon, assuming spherical Earth. 
    Returns result in ratio of the sphere's area if the radius is specified. Otherwise, in the units of provided radius.
    lats and lons are in degrees.
    """
    #TODO: take into account geodesy (i.e. convert latitude to authalic sphere, use radius of authalic sphere instead of mean radius of spherical earth)
    lats = np.deg2rad(lats)
    lons = np.deg2rad(lons)

    if algorithm==0:
        # Line integral based on Green's Theorem, assumes spherical Earth
        from numpy import arctan2, cos, sin, sqrt, pi, power, append, diff

        #close polygon
        if lats[0]!=lats[-1]:
            lats = append(lats, lats[0])
            lons = append(lons, lons[0])

        # Get colatitude (a measure of surface distance as an angle)
        a = sin(lats/2)**2 + cos(lats)* sin(lons/2)**2
        colat = 2*arctan2( sqrt(a), sqrt(1-a) )

        #azimuth of each point in segment from the arbitrary origin
        az = arctan2(cos(lats) * sin(lons), sin(lats)) % (2*pi)

        # Calculate step sizes
        # daz = diff(az) % (2*pi)
        daz = diff(az)
        daz = (daz + pi) % (2 * pi) - pi

        # Determine average surface distance for each step
        deltas=diff(colat)/2
        colat=colat[0:-1]+deltas

        # Integral over azimuth is 1-cos(colatitudes)
        integrands = (1-cos(colat)) * daz

        # Integrate and save the answer as a fraction of the unit sphere.
        # Note that the sum of the integrands will include a factor of 4pi.
        area = abs(sum(integrands))/(4*pi) # Could be area of inside or outside

        area = min(area,1-area)
        if radius is not None: #return in units of radius
            return area * 4*pi*radius**2
        else: #return in ratio of sphere total area
            return area
    elif algorithm==2:
        #L'Huilier Theorem, assumes spherical earth
        #see:
        # https://mathworld.wolfram.com/SphericalPolygon.html
        # https://web.archive.org/web/20160324191929/http://forum.worldwindcentral.com/showthread.php?20724-A-method-to-compute-the-area-of-a-spherical-polygon
        # https://github.com/spacetelescope/spherical_geometry/blob/master/spherical_geometry/polygon.py
        # https://github.com/tylerjereddy/spherical-SA-docker-demo/blob/master/docker_build/demonstration.py
        #TODO
        pass
    elif algorithm==3:
        #https://trs.jpl.nasa.gov/handle/2014/41271
        #TODO
        pass


def connectAndData(data):
  print(data)
  data = json.dumps(data)
  print("cambio ")
  try:
    cnx = mysql.connector.connect(user='root',password="root", database="suite2")
    sql = "INSERT INTO plant (contorno) VALUES (%s)"
    val = "data"
    mycursor = cnx.cursor()
    mycursor.execute(sql,(data,))

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
data="[[-76.738585, 2.394883], [-76.738584, 2.394883], [-76.738582, 2.394885], [-76.738582, 2.394886], [-76.738581, 2.394885], [-76.738579, 2.394885], [-76.738578, 2.394885], [-76.738577, 2.394886], [-76.738575, 2.394887], [-76.738574, 2.394888], [-76.738572, 2.394889], [-76.738571, 2.394889], [-76.738569, 2.39489], [-76.73857, 2.394888], [-76.73857, 2.394887], [-76.73857, 2.394885], [-76.738571, 2.394883], [-76.738572, 2.394882], [-76.738572, 2.394881], [-76.738573, 2.394879], [-76.738572, 2.394878], [-76.738572, 2.394876], [-76.738573, 2.394874], [-76.738574, 2.394874], [-76.738573, 2.394872], [-76.738575, 2.394873], [-76.738577, 2.394874], [-76.738579, 2.394874], [-76.73858, 2.394875], [-76.738581, 2.394874], [-76.738582, 2.394875], [-76.738583, 2.394876], [-76.738584, 2.394877], [-76.738584, 2.394878], [-76.738585, 2.39488], [-76.738585, 2.394881]]"
array=json.loads(data)

polygon_area([],[])