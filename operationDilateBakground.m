function [BW] = operationDilateBakground(MASK)
%segmentImage Segment image using auto-generated code from imageSegmenter app
%  [BW,MASKEDIMAGE] = segmentImage(RGB,MASK) segments image RGB using
%  auto-generated code from the imageSegmenter app. The final segmentation
%  is returned in BW, and a masked image is returned in MASKEDIMAGE.

% Auto-generated by imageSegmenter app on 12-Aug-2021
%----------------------------------------------------

% Load Mask
BW = MASK;

% Dilate mask with disk
radius = 5;
decomposition = 0;
se4 = strel('disk', radius, decomposition);
se3 = strel('disk', 2, decomposition);
BW = imdilate(BW, se4);
BW=  imclose(BW,se3);
end

