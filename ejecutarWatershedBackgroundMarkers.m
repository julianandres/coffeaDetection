function [labels] = ejecutarWatershedBackgroundMarkers(fgm4,imageSegmented)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%%
%bw = erodeMask(bw);
gmag = imgradient(imageSegmented(:,:,3));
imR=imbinarize(imageSegmented(:,:,3));
se = strel('disk',10);
imR2 = imdilate(imR,se);
BW2 = edge(imR2,'Prewitt');
imshow(BW2);
%%
bgm = BW2;
imshow(bgm)
title('Watershed Ridge Lines')

bw = imbinarize(imageSegmented(:,:,3));
imshow(bw)
title('Background')
D = bwdist(bw);
DL = watershed(D);
bgm3 = DL == 0;
imshow(bgm)

gmag2 = imimposemin(gmag,bgm|fgm4|bgm3);

%%
labels = watershed(gmag2);
%%
labelsToImage = imdilate(labels==0,ones(3,3)) + 3*fgm4;
I4 = labeloverlay(imageSegmented(:,:,3),labelsToImage);
imshow(I4)
title('Markers and Object Boundaries Superimpo on Original Image')
end
