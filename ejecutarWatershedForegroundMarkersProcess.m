function [fgm4] = ejecutarWatershedForegroundMarkersProcess(imageSegmented)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

se = strel('disk',39);
Io = imopen(imageSegmented(:,:,3),se);
se2 = strel('disk',29);
Io2 = imopen(imageSegmented(:,:,3),se2);

fgm = imregionalmax(Io);
fgmD = imregionalmax(Io2);

fgm = fgm|fgmD;


se2 = strel('disk',7);
fgm = imerode(fgm,se2);
fgm = imclose(fgm,se2);


fgm4 = fgm;

%I3 = labeloverlay(imageSegmented(:,:,3),fgm4);
%imshow(I3)
%title('Modified Regional Maxima Superimposed on Original Image')

end

