
function [value] = obtainNDVIAvg(plantSeparated)
[a,b,c] = size(plantSeparated);
ndviAcumulated=0;
numberOfValues=0;
rviAcumulated=0;
nrviAcumulated=0;
tviAcumulated=0;
saviAcumulated=0;
ndviPoints=[];
for row=1:a
    for col=1:b
            redBand = double(plantSeparated(row,col,1));
            blueBand = double(plantSeparated(row,col,3));
            if redBand~=0 && blueBand ~=0
                ndviValue = (blueBand-redBand)/(blueBand+redBand);
                ndviPoints(end+1)=ndviValue;
                valueL=0.5;
                rviValue= blueBand/redBand;
                nrviValue=(rviValue-1)/(rviValue+1);
                tviValue = sqrt(abs((ndviValue)+0.5));
                saviValue=(1+valueL)*(blueBand-redBand)/(blueBand+redBand+valueL);
                ndviAcumulated=ndviAcumulated+ndviValue;
                rviAcumulated=rviAcumulated+rviValue;
                nrviAcumulated=nrviAcumulated+nrviValue;
                tviAcumulated=tviAcumulated+tviValue;
                saviAcumulated=saviAcumulated+saviValue;
                numberOfValues=numberOfValues+1;
            end
    end
end
ndviMean=sum(ndviPoints)/numberOfValues;
ndviMax=max(ndviPoints);
ndviMin=min(ndviPoints);
rviMean=rviAcumulated/numberOfValues;
nrviMean=nrviAcumulated/numberOfValues;
tviMean=tviAcumulated/numberOfValues;
saviMean=saviAcumulated/numberOfValues;
%% Definition Of RTA
 value = jsonencode(struct("ndviMean",ndviMean,...
                          "ndviMax",ndviMax,...
                          "ndviMin",ndviMin,...
                          "rviMean",rviMean,...
                          "nrviMean",nrviMean,...
                          "tviMean",tviMean,...
                          "saviMean",saviMean));

end