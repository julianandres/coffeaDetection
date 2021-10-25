function [] = procesarForegroundMarkers(fgm4,imageSegmented)
%UNTITLED Summary of this function goes here
%% Individualization of markers
gmagFgm = imgradient(fgm4);
labels = watershed(gmagFgm);
%% Dilatación del mismo hasta un radio aproximado. 
limiteSuperior=700;
%limiteSuperior=49;
limiteInferior=6;
imageResult= imageSegmented(:,:,3);
for k = limiteInferior:limiteSuperior
    plantIndividual=labels==k;
    %[B,M] = bwboundaries(plantIndividual,'noholes');
    %boundar = B{1};
    distance=sum(plantIndividual(:),"all");
    if(distance>3000&&distance<8500)
        distance, k
        
        if(distance>5200&&distance<8500)
            cmap="winter"
        end
        if(distance>3000&&distance<5200)
            cmap="autumn"
        end
        if(distance<3000)
            cmap="jet"
        end
        decomposition = 0;
        radius=fix(-(7/1300)*(distance)+(985/13));
        se = strel('disk', radius, decomposition);
        %BW = imdilate(plantIndividual, se);
        %imshow(BW);
        %title('BW')

        labelsToImage = imdilate(plantIndividual,se);
        [B,M] = bwboundaries(labelsToImage,'noholes');
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
            %imageResult = labeloverlay(imageResult,labelsToImage,'Colormap',cmap);
        end
    end
    %points
    %pause(2)
end
imshow(imageResult);

end

