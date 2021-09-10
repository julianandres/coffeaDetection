function [BW,maskedImage] = segmentedImage1(RGB)
%segmentImage Segment image using auto-generated code from imageSegmenter app
%  [BW,MASKEDIMAGE] = segmentImage(RGB) segments image RGB using
%  auto-generated code from the imageSegmenter app. The final segmentation
%  is returned in BW, and a masked image is returned in MASKEDIMAGE.

% Auto-generated by imageSegmenter app on 04-Jun-2021
%----------------------------------------------------


% Convert RGB image into L*a*b* color space.
X = rgb2lab(RGB);

% Create empty mask.
BW = false(size(X,1),size(X,2));

% Draw ROIs

xPos = [4935.9395 5018.8678 5516.4370 5682.2935 5816.2544 5975.7317 6052.2809 6090.5554 6109.6927 6135.2091 6141.5882 6154.3463 6173.4836 6179.8627 6199.0000 6205.3791 6205.3791 6218.1373 6230.8955 6237.2746 6243.6537 6250.0327 6256.4118 6262.7909 6269.1700 6275.5491 6588.1247 6537.0919 6186.2418 6179.8627 5880.0453 5299.5479 4916.8023];
yPos = [1375.1946 1375.1946 1451.7437 1496.3974 1528.2928 1572.9465 1598.4628 1604.8419 1611.2210 1617.6001 1623.9792 1630.3583 1636.7374 1643.1165 1649.4956 1662.2538 1675.0120 1681.3911 1694.1492 1700.5283 1700.5283 1700.5283 1700.5283 1700.5283 1700.5283 1700.5283 2784.9742 3276.1644 3754.5963 4303.1984 4679.5649 4705.0812 1394.3319];
m = size(BW, 1);
n = size(BW, 2);
addedRegion = poly2mask(xPos, yPos, m, n);
BW = BW | addedRegion;

% Create masked image.
maskedImage = RGB;
maskedImage(repmat(~BW,[1 1 3])) = 0;
end

