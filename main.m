clc;
clear all;
he = imread('odm_orthophoto.png');
imgSeg7=segmentImage7(he);
imshow(imgSeg7)
