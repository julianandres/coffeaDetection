clc;
clear all;

I = imread('odm_orthophoto_3.tif');
Band1=I(:,:,1);
Band2=I(:,:,2);
Band3=I(:,:,3);

[m,n,z]=size(I);
out = uint8(zeros(m,n,3));
out(:,:,1)=Band1;
out(:,:,2)=Band2;
out(:,:,3)=Band3;
Band1=out(:,:,1);
imshow(out)