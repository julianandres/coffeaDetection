function [labels] = ejecutarWatershedBackgroundMarkers(fgm4,gmag,imageSegmented)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
bw = imbinarize(imageSegmented(:,:,3));
imshow(bw)
title('Background')
D = bwdist(bw);
DL = watershed(D);
bgm = DL == 0;
imshow(bgm)
title('Watershed Ridge Lines')

gmag2 = imimposemin(gmag, bgm | fgm4);
labels = watershed(gmag2);
end

