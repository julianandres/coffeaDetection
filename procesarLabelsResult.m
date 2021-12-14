function [] = procesarLabelsResult(labels,imageSegmented, imageName, lote, task,fileNameDSM)
%UNTITLED6 Summary of this function goes here
%%   Detailed explanation goes here
limiteSuperior=max(labels, [], 'all');
limiteSuperior=129;
limiteInferior=129;
imR=imbinarize(imageSegmented(:,:,3));
[A,R] = readgeoraster(fileNameDSM);
for k = limiteInferior:limiteSuperior
    imageFinale = labels==k&imR;
    cantidadDeUnos= sum(imageFinale,'all')
    k
    if(cantidadDeUnos>1960 && cantidadDeUnos<35000)
        imageCleared = morphProcessPlantDeleteBranches(imageFinale);
        imageFinale = imageCleared&imageFinale;
       % se = strel('disk', radius, decomposition);
        [hMax,hMin] = obtenerAlturaMaximaYMinima(imageFinale,fileNameDSM,imageName,A,R);
        %discoToImage = imdilate(disco,se);
        %imageFinale=imageFinale&discoToImage;
        altura=(hMax-hMin)*100;
        %altura=-1;
        [B,M] = bwboundaries(imageFinale,'noholes');
        points=py.list({});
        if ~isempty(B) && k>0
            boundar = B{1};
            for s=1:length(boundar)
                if mod(s,3)==0
                    pixX=boundar(s,1);
                    pixY=boundar(s,2);
                    transform=py.transformCoords.pixel2coord(pixY,pixX,imageName);
                    points.append(transform);
                end
            end
            %I5 = labeloverlay(I5,L==k);
            points.append(points{1});
            minX=min(boundar(:,1));
            maxX=max(boundar(:,1));
            minY=min(boundar(:,2));
            maxY=max(boundar(:,2));
            pointsImage=py.list({});
            point1=py.transformCoords.pixel2coord(minY,minX,imageName);
            point2=py.transformCoords.pixel2coord(maxY,minX,imageName);
            point3=py.transformCoords.pixel2coord(maxY,maxX,imageName);
            point4=py.transformCoords.pixel2coord(minY,maxX,imageName);
            pointsImage.append(point1);
            pointsImage.append(point2);
            pointsImage.append(point3);
            pointsImage.append(point4);
            pointsImage.append(point1);
            centerX=maxX-minX;
            centerY=maxY-minY;
            centerCoord=py.transformCoords.pixel2coord(centerY,centerX,imageName);
            %imagesWithBoundary = imageSegmentedgray.* uint8(L==ks);
            plantSeparated=imageSegmented(minX:maxX,minY:maxY,:);
            %imshow(plantSeparated)
            ndvi=obtainNDVIAvg(plantSeparated);
            statisticData=getStatisticsVariables(plantSeparated);
            py.transformCoords.connectAndData(points,ndvi,centerCoord,k,statisticData,pointsImage,task,lote,altura);
        end
    end
    %points
    %pause(2)
end
end