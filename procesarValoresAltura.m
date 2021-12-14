function [hMax,hMin] = procesarValoresAltura(alturas)
%% ----------------------------------------------------
 hMax = max(alturas);
 hMin= min(alturas);
 if(hMax>hMin)
    if(hMax-hMin>2.1)
        alturas(alturas==hMax)=[];
        [hMax,hMin] = procesarValoresAltura(alturas);
    end
    if(hMax-hMin<1.6)
        hMax = 1771.6; 
        hMin=1770.0;
    end
 end
 %valueHeight=(uint16(valueHeight));
end

