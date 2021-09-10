import cv2 as cv2
import numpy as np
from matplotlib import pyplot as plt
img = cv2.imread('odm_orthophoto_3.tif',-1)
img_scaled = (img/256).astype('uint8')
#hsv = cv2.cvtColor(img_scaled, cv2.COLOR_BGR2HSV)
#red = hsv[:,:,2]
#blue = img[:,:,0]
#green = img[:,:,1]
exgMin=-191
exgMax=-119
img=img.astype('int64')
imgMask = 2*img[:,:,1]-img[:,:,0]-img[:,:,2]
print(imgMask.dtype)
imgMask[imgMask>exgMax]=0
imgMask[imgMask<exgMin]=0

imgMask[imgMask!=0]=254

imgMask=imgMask.astype("uint8")
    # Threshold the HSV image to get only blue colors
#mask = cv2.inRange(hsv, lower_blue, upper_blue)
#res = cv2.bitwise_and(img,img, mask= mask)
#th2 = cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,11,2)
#ret,thresh1 = cv2.threshold(imgMask,exgMax,255,cv2.THRESH_BINARY)
#res = cv2.bitwise_and(img_scaled,img_scaled, mask= ret)
#cv2.namedWindow('gray', cv2.WINDOW_NORMAL)
imS = cv2.resize(imgMask, (1260, 640)) 
cv2.imshow("msk",imS)
#cv2.resizeWindow('green', 1200, 1200)
#cv2.resizeWindow('blue', 1200, 1200)
#cv2.imshow('res',res)
cv2.waitKey(0)