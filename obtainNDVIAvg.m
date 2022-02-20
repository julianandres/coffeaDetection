function [value] = obtainNDVIAvg(plantSeparated)
 %% Calc Of The MEAN by each band
[a,b,c] = size(plantSeparated);
 acumulatedRed=[];
acumulatedGreen=[];
acumulatedBlue=[];
numberOfValues=0;
for row=2:a
    for col=1:b
            redBand = double(plantSeparated(row,col,1));
            greenBand = double(plantSeparated(row,col,2));
            blueBand = double(plantSeparated(row,col,3));
            if redBand~=0 && blueBand ~=0
                acumulatedRed(end+1) = redBand;
                acumulatedGreen(end+1) = greenBand;
                acumulatedBlue(end+1) = blueBand;
                numberOfValues=numberOfValues+1;
            end
    end
end
meanRed=sum(acumulatedRed)/numberOfValues;
meanGreen=sum(acumulatedGreen)/numberOfValues;
meanBlue=sum(acumulatedBlue)/numberOfValues;


%%


numberOfValues=0;

criAcumulated = [];
cgreenviAcumulated = [];
cnirviAcumulated = [];


gndviAcumulated = [];
mcariOneAcumulated = [];
mtviOneAcumulated = [];
ngrdiAcumulated = [];

srviAcumulated = [];



ndviPoints=[];
rviAcumulated=[];
nrviAcumulated = [];
tviAcumulated=[];
saviAcumulated=[];


for row=1:a
    for col=1:b
            redBand = double(plantSeparated(row,col,1));
            greenBand = double(plantSeparated(row,col,2));
            blueBand = double(plantSeparated(row,col,3));
            if redBand~=0 && blueBand ~=0
                criAcumulated(end+1)=redBand/meanRed;
                cgreenviAcumulated(end+1)=greenBand/meanGreen;
                cnirviAcumulated(end+1)=blueBand/meanBlue;
                
                ndviValue=(blueBand-redBand)/(blueBand+redBand);
                
                gndviAcumulated(end+1) = (blueBand-greenBand)/(blueBand+greenBand);
                mcariOneAcumulated(end+1)=1.2*(2.5*(blueBand-redBand)-1.3*(blueBand-greenBand));
                mtviOneAcumulated(end+1)=1.2*(1.2*(blueBand-greenBand)-2.5*(redBand-greenBand));
                ngrdiAcumulated(end+1) = (greenBand-redBand)/(greenBand+redBand);
                ndviPoints(end+1)=ndviValue;
                srviAcumulated(end+1)=blueBand/redBand;
                
                valueL=0.5;
                rviValue = blueBand/redBand;
                rviAcumulated(end+1)=rviValue;
                nrviAcumulated(end+1)=(rviValue-1)/(rviValue+1);
                tviAcumulated(end+1)=sqrt(abs((ndviValue)+0.5));
                saviAcumulated(end+1)=(1+valueL)*(blueBand-redBand)/(blueBand+redBand+valueL);
                numberOfValues=numberOfValues+1;
            end
    end
end
criMean=sum(criAcumulated)/numberOfValues;
criMax=max(criAcumulated);
criMin=min(criAcumulated);

cgreenviMean=sum(cgreenviAcumulated)/numberOfValues;
cgreenviMax=max(cgreenviAcumulated);
cgreenviMin=min(cgreenviAcumulated);

cnirviMean=sum(cnirviAcumulated)/numberOfValues;
cnirviMax=max(cnirviAcumulated);
cnirviMin=min(cnirviAcumulated);

gndviMean=sum(gndviAcumulated)/numberOfValues;
gndviMax=max(gndviAcumulated);
gndviMin=min(gndviAcumulated);

mcariOneMean=sum(mcariOneAcumulated)/numberOfValues;
mcariOneMax=max(mcariOneAcumulated);
mcariOneMin=min(mcariOneAcumulated);

mtviOneMean=sum(mcariOneAcumulated)/numberOfValues;
mtviOneMax=max(mcariOneAcumulated);
mtviOneMin=min(mcariOneAcumulated);

ngrdiMean=sum(ngrdiAcumulated)/numberOfValues;
ngrdiMax=max(ngrdiAcumulated);
ngrdiMin=min(ngrdiAcumulated);

ndviMean=sum(ndviPoints)/numberOfValues;
ndviMax=max(ndviPoints);
ndviMin=min(ndviPoints);

rviMean=sum(rviAcumulated)/numberOfValues;
rviMax=max(rviAcumulated);
rviMin=min(rviAcumulated);

nrviMean=sum(nrviAcumulated)/numberOfValues;
nrviMax=max(nrviAcumulated);
nrviMin=min(nrviAcumulated);

tviMean=sum(tviAcumulated)/numberOfValues;
tviMax=max(tviAcumulated);
tviMin=min(tviAcumulated);

saviMean=sum(saviAcumulated)/numberOfValues;
saviMax=max(saviAcumulated);
saviMin=min(saviAcumulated);


  


%% Definition Of RTA
 value = jsonencode(struct("criMean",criMean,...
                          "criMax",criMax,...
                          "criMin",criMin,...
                          "cgreenviMean",cgreenviMean,...
                          "cgreenviMax",cgreenviMax,...
                          "cgreenviMin",cgreenviMin,...
                          "cnirviMean",cnirviMean,...
                          "cnirviMax",cnirviMax,...
                          "cnirviMin",cnirviMin,...
                          "gndviMean",gndviMean,...
                          "gndviMax",gndviMax,...
                          "gndviMin",gndviMin,...
                          "mcariOneMean",mcariOneMean,...
                          "mcariOneMax",mcariOneMax,...
                          "mcariOneMin",mcariOneMin,...
                          "mtviOneMean",mtviOneMean,...
                          "mtviOneMax",mtviOneMax,...
                          "mtviOneMin",mtviOneMin,...
                          "ngrdiMean",ngrdiMean,...
                          "ngrdiMax",ngrdiMax,...
                          "ngrdiMin",ngrdiMin,...
                          "ndviMean",ndviMean,...
                          "ndviMax",ndviMax,...
                          "ndviMin",ndviMin,...
                          "rviMean",rviMean,...
                          "rviMax",rviMax,...
                          "rviMin",rviMin,...
                          "nrviMean",nrviMean,...
                          "nrviMax",nrviMax,...
                          "nrviMin",nrviMin,...
                          "tviMean",tviMean,...
                          "tviMax",tviMax,...
                          "tviMin",tviMin,...                          
                          "saviMean",saviMean,...
                          "saviMax",saviMax,...
                          "saviMin",saviMin));

end