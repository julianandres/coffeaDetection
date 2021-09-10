from osgeo import osr, gdal

# get the existing coordinate system

def pixel2coord(x, y):
    """
    Returns latitude/longitude coordinates from pixel x, y coords

    Keyword Args:
      img_path: Text, path to tif image
      x: Pixel x coordinates. For example, if numpy array, this is the column index
      y: Pixel y coordinates. For example, if numpy array, this is the row index
    """
    # Open tif file
    ds = gdal.Open('odm_orthophoto_3.tif')

    old_cs = osr.SpatialReference()
    old_cs.ImportFromWkt(ds.GetProjectionRef())

    # create the new coordinate system
    # In this case, we'll use WGS 84
    # This is necessary becuase Planet Imagery is default in UTM (Zone 15). So we want to convert to latitude/longitude
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
    new_cs.ImportFromWkt(wgs84_wkt)

    # create a transform object to convert between coordinate systems
    transform = osr.CoordinateTransformation(old_cs,new_cs) 
    
    gt = ds.GetGeoTransform()

    # GDAL affine transform parameters, According to gdal documentation xoff/yoff are image left corner, a/e are pixel wight/height and b/d is rotation and is zero if image is north up. 
    xoff, a, b, yoff, d, e = gt

    xp = a * x + b * y + xoff
    yp = d * x + e * y + yoff

    lat_lon = transform.TransformPoint(xp, yp) 

    xp = lat_lon[0]
    yp = lat_lon[1]
    
    return (xp, yp)

print(pixel2coord(1934,1058))