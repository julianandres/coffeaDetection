function [hMax,hMin] = obtenerAlturaMaximaYMinima(maskImageSeparated,fileNameDSM,filenameOrth,A,R)
%% ----------------------------------------------------
se4 = strel('disk', 20, 0);
maskImageSeparated = imdilate(maskImageSeparated, se4);
[a,b,c] = size(maskImageSeparated);
alturas=[];
for row=1:a
    for col=1:b
            isOne = maskImageSeparated(row,col);
            if isOne ~=0 && mod(row,7)==0 && mod(col,7)==0 
                alturaPunto = obtenerAltura(fileNameDSM,filenameOrth,row,col,A,R);
                alturas(end+1)=alturaPunto;
            end
    end
end 
[hMax,hMin] = procesarValoresAltura(alturas);
 %valueHeight=(uint16(valueHeight));
end

