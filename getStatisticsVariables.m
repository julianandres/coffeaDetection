function [jsonVariables] = getStatisticsVariables(imagePlant)
%getStatisticsVariables Summary of this function goes here
%   This function define statistic variables from an image. 
    [histVal, histIndex]=imhist(imagePlant);
    [histValRed, histIndex]=imhist(imagePlant(:,:,1));
    [histValGreen, histIndex]=imhist(imagePlant(:,:,1));
    [histValBlue, histIndex]=imhist(imagePlant(:,:,1));
    [a,b,c] = size(imagePlant);
    maxHistIndexValue=2;
    maxHistRedIndexValue=2;
    maxHistGreenIndexValue=2;
    maxHistBlueIndexValue=2;
    %Functions Of Hystogram, this find the INDEX of a value
    for range=2:256
        if histVal(range,1)>histVal(maxHistIndexValue,1)
            maxHistIndexValue=range;
        end
        if histValRed(range,1)>histValRed(maxHistRedIndexValue,1)
            maxHistIndexValue=range;
        end
        if histValGreen(range,1)>histValGreen(maxHistGreenIndexValue,1)
            maxHistGreenIndexValue=range;
        end
        if histValBlue(range,1)>histValBlue(maxHistBlueIndexValue,1)
            maxHistBlueIndexValue=range;
        end
    end
    
    %% Calc Of The MEAN by each band
    acumulatedRed=0;
    acumulatedGreen=0;
    acumulatedBlue=0;
    numberOfValues=0;
    for row=2:a
        for col=1:b
                redBand = double(imagePlant(row,col,1));
                greenBand = double(imagePlant(row,col,2));
                blueBand = double(imagePlant(row,col,3));
                if redBand~=0 && blueBand ~=0
                    acumulatedRed = redBand+acumulatedRed;
                    acumulatedGreen = greenBand+acumulatedGreen;
                    acumulatedBlue = blueBand+acumulatedBlue;
                    numberOfValues=numberOfValues+1;
                end
        end
    end
    meanRed=acumulatedRed/numberOfValues;
    meanGreen=acumulatedGreen/numberOfValues;
    meanBlue=acumulatedBlue/numberOfValues;
    %% Calc Of Variance by Each band Using MEANS
    %
    % S^2 = (sum(Xi - Mean(X))/(n-1))
    %
    variancePerElementRed=0;
    variancePerElementBlue=0;
    variancePerElementGreen=0;
    numberOfValues=0;
    for row=2:a
        for col=1:b
                redBand = double(imagePlant(row,col,1));
                greenBand = double(imagePlant(row,col,2));
                blueBand = double(imagePlant(row,col,3));
                if redBand~=0 && blueBand ~=0
                    variancePerElementRed = variancePerElementRed+(redBand-meanRed)^2;
                    variancePerElementBlue = variancePerElementBlue+(greenBand-meanGreen)^2;
                    variancePerElementGreen = variancePerElementGreen+(blueBand-meanBlue)^2;
                    numberOfValues=numberOfValues+1;
                end
        end
    end
    
    varianceRed = variancePerElementRed/(numberOfValues-1);
    varianceGreen = variancePerElementGreen/(numberOfValues-1);
    varianceBlue = variancePerElementBlue/(numberOfValues-1);
    
    %% Definition Of RTA
    jsonVariables = jsonencode(struct("meanRed",meanRed,...
                                      "meanGreen",meanGreen,...
                                      "meanBlue",meanBlue,...
                                      "maxHistIndexValue",maxHistIndexValue,...
                                      "maxHistRedIndexValue",maxHistRedIndexValue,...
                                      "maxHistGreenIndexValue",maxHistGreenIndexValue,...
                                      "maxHistBlueIndexValue",maxHistBlueIndexValue,...
                                      "varianceRed",varianceRed,...
                                      "varianceGreen",varianceGreen,...
                                      "varianceBlue",varianceBlue));
end

