from osgeo import osr, ogr, gdal
import transformCoords


def world_to_pixel(geo_matrix, x, y):
    """
    Uses a gdal geomatrix (gdal.GetGeoTransform()) to calculate
    the pixel location of a geospatial coordinate
    """
    ul_x= geo_matrix[0]
    ul_y = geo_matrix[3]
    x_dist = geo_matrix[1]
    y_dist = geo_matrix[5]
    pixel = int((x - ul_x) / x_dist)
    line = -int((ul_y - y) / y_dist)
    return pixel, line
# Extract target reference from the tiff file
ds = gdal.Open("LaSultana29AgoSinSOl-dsm_latlon.tif")
target = osr.SpatialReference(wkt=ds.GetProjection())

print(transformCoords.pixel2coord(320,220,"LaSultana29AgoSinSOl-dsm_latlon.tif"))
# create the new coordinate system
source = osr.SpatialReference()
source.ImportFromEPSG(4326)

transform = osr.CoordinateTransformation(source, target)

point = ogr.Geometry(ogr.wkbPoint)
point.AddPoint(2.37511966498265,-76.7273)
point.Transform(transform)
print(transform.TransformPoint(2.37511966498265,-76.7273))
print(point.GetX(), point.GetY())
x, y = world_to_pixel(ds.GetGeoTransform(), point.GetX(), point.GetY())
print(x, y)


