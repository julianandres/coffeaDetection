function [fgm4,gmag] = ejecutarWatershedForegroundMarkersProcess(imageSegmented)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
gmag = imgradient(imageSegmented(:,:,3));

se = strel('disk',40);
Io = imopen(imageSegmented(:,:,3),se);
se2 = strel('disk',30);
Io2 = imopen(imageSegmented(:,:,3),se2);

fgm = imregionalmax(Io);
fgmD = imregionalmax(Io2);

fgm = fgm|fgmD;


se2 = strel(ones(4,4));
fgm2 = imclose(fgm,se2);
fgm3 = imerode(fgm2,se2);

fgm4 = fgm3;

%I3 = labeloverlay(imageSegmented(:,:,3),fgm4);
%imshow(I3)
%title('Modified Regional Maxima Superimposed on Original Image')

end

