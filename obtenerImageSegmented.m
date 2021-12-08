function [imagenRGB2Anios,imagenRGB7Anios] = obtenerImageSegmented(imageName)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
I = imread(imageName);

Band1=I(:,:,1);
Band2=I(:,:,2);
Band3=I(:,:,3);
[m,n,z]=size(I);
imagenRGB7Anios = uint8(zeros(m,n,3));
imagenRGB7Anios(:,:,1)=Band1;
imagenRGB7Anios(:,:,2)=Band2;
imagenRGB7Anios(:,:,3)=Band3;
%%
maskRegion=segmentImageJuly15(imagenRGB7Anios);
imagenRGB2Anios = imagenRGB7Anios.*uint8(maskRegion);
end

