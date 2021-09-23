function [labels] = ejecutarWatershedBackgroundMarkers(fgm4,gmag,imageSegmented)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%%
%bw = erodeMask(bw);
imR=imbinarize(imageSegmented(:,:,3));
se = strel('disk',6);
imR2 = imdilate(imR,se);
BW2 = edge(imR2,'Prewitt');
BW2 = imdilate(BW2,strel('disk',3));
imshow(BW2);
%%
bgm = BW2;
imshow(bgm)
title('Watershed Ridge Lines')

gmag2 = imimposemin(gmag,bgm|fgm4);

%%
labels = watershed(gmag2);
%%
labelsToImage = imdilate(labels==0,ones(3,3)) + 3*fgm4;
I4 = labeloverlay(imageSegmented(:,:,3),labelsToImage);
imshow(I4)
title('Markers and Object Boundaries Superimpo on Original Image')
end



