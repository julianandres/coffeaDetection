function [imageSegmented] = segmentarPorKmeans(numClusters,labelToReturn,imagenRGB)
lab_he = rgb2lab(imagenRGB);
ab = lab_he(:,:,2:3);
ab = im2single(ab);

pixel_labelsThreeColors = imsegkmeans(ab,numClusters,'NumAttempts',3);

imshow(pixel_labelsThreeColors,[]);
title('Image Labeled by Cluster Index Three');

mask3 = pixel_labelsThreeColors==labelToReturn;
imageSegmentedOnlyPlants = imagenRGB .* uint8(mask3);
imageSegmented=imageSegmentedOnlyPlants;
end

