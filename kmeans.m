clc;
clear all;
I = imread('odm_orthophoto_3.tif');
Band1=I(:,:,1);
Band2=I(:,:,2);
Band3=I(:,:,3);

[m,n,z]=size(I);
imagenRGB7Anios = uint8(zeros(m,n,3));
imagenRGB7Anios(:,:,1)=Band1;
imagenRGB7Anios(:,:,2)=Band2;
imagenRGB7Anios(:,:,3)=Band3;
Band1=imagenRGB7Anios(:,:,1);
mask7=segmentedImage1(imagenRGB7Anios);
imagenRGB7Anios = imagenRGB7Anios.*uint8(mask7);

lab_he = rgb2lab(imagenRGB7Anios);
ab = lab_he(:,:,2:3);
ab = im2single(ab);
nColors = 3;
% repeat the clustering 3 times to avoid local minima
pixel_labels = imsegkmeans(ab,nColors,'NumAttempts',3);
imshow(pixel_labels,[]);
title('Image Labeled by Cluster Index');
%%
mask1 = pixel_labels==1;
imageSegmented = imagenRGB7Anios .* uint8(mask1);
imshow(imageSegmented)
title('Objects Image Segmented');

%%
mask1 = pixel_labels==2;
imageSegmented = imagenRGB7Anios .* uint8(mask1);
imshow(imageSegmented)
title('Objects Image Segmented');

%%
mask1 = pixel_labels==3;
imageSegmented = imagenRGB7Anios .* uint8(mask1);
imshow(imageSegmented)
title('Objects Image Segmented');

%%
mask1 = pixel_labels==5;
imageSegmented = imagenRGB7Anios .* uint8(mask1);
imshow(imageSegmented)
title('Objects Image Segmented');

%%


[maskClosed,imageMaskedClosed]= openOperationMorph(imageSegmented,mask1);
imshow(imageMaskedClosed)
title('Objects Image Segmented');

%% Segmentar de Nuevo
lab_he2 = rgb2lab(imageMaskedClosed);
ab2 = lab_he2(:,:,2:3);
ab2 = im2single(ab2);
% repeat the clustering 3 times to avoid local minima
pixel_labels2 = imsegkmeans(ab2,nColors,'NumAttempts',3);
imshow(pixel_labels2,[]);
title('Image Labeled by Cluster Index');

mask12 = pixel_labels2==3;
imageSegmented = imageMaskedClosed .* uint8(mask12);
imshow(imageSegmented)
title('Objects Image Segmented');

