function [BW,maskedImage] = segmentImageJuly15(RGB)
%segmentImage Segment image using auto-generated code from imageSegmenter app
%  [BW,MASKEDIMAGE] = segmentImage(RGB) segments image RGB using
%  auto-generated code from the imageSegmenter app. The final segmentation
%  is returned in BW, and a masked image is returned in MASKEDIMAGE.

% Auto-generated by imageSegmenter app on 25-Jul-2021
%----------------------------------------------------


% Convert RGB image into L*a*b* color space.
X = rgb2lab(RGB);

% Create empty mask.
BW = false(size(X,1),size(X,2));

% Draw ROIs

xPos = [940.7857 1972.9905 2292.8286 1972.9905 2321.9048 3732.1000 3979.2476 2103.8333 1856.6857 1420.5429 1420.5429 969.8619];
yPos = [6782.5214 5212.4071 4383.7357 3773.1357 2959.0024 2915.3881 11042.1833 10882.2643 10140.8214 8948.6976 8919.6214 6797.0595];
m = size(BW, 1);
n = size(BW, 2);
addedRegion = poly2mask(xPos, yPos, m, n);
BW = BW | addedRegion;

% Create masked image.
maskedImage = RGB;
maskedImage(repmat(~BW,[1 1 3])) = 0;
end

