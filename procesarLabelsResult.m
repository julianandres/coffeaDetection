function [] = procesarLabelsResult(labels,imageSegmented, nombreImagen, lote, task)
%UNTITLED6 Summary of this function goes here
%%   Detailed explanation goes here
limiteSuperior=max(labels, [], 'all');
%limiteSuperior=250;
limiteInferior=7;
for k = limiteInferior:limiteSuperior
    [B,M] = bwboundaries(labels==k,'noholes');
    points=py.list({});
    boundar = B{1};
    if ~isempty(B) && k>0 && length(boundar)>300 && length(boundar)<1300
        for s=1:length(boundar)
            if mod(s,2)==0
                pixX=boundar(s,1);
                pixY=boundar(s,2);
                transform=py.transformCoords.pixel2coord(pixY,pixX,nombreImagen);
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
        point1=py.transformCoords.pixel2coord(minY,minX,nombreImagen);
        point2=py.transformCoords.pixel2coord(maxY,minX,nombreImagen);
        point3=py.transformCoords.pixel2coord(maxY,maxX,nombreImagen);
        point4=py.transformCoords.pixel2coord(minY,maxX,nombreImagen);
        pointsImage.append(point1);
        pointsImage.append(point2);
        pointsImage.append(point3);
        pointsImage.append(point4);
        pointsImage.append(point1);
        centerX=maxX-minX;
        centerY=maxY-minY;
        centerCoord=py.transformCoords.pixel2coord(centerY,centerX,nombreImagen);
        %imagesWithBoundary = imageSegmentedgray.* uint8(L==ks);
        plantSeparated=imageSegmented(minX:maxX,minY:maxY,:);
        %imshow(plantSeparated)
        ndvi=obtainNDVIAvg(plantSeparated);
        statisticData=getStatisticsVariables(plantSeparated);
        py.transformCoords.connectAndData(points,ndvi,centerCoord,k,statisticData,pointsImage,task,lote);
    end
    %points
    %pause(2)
end
end

