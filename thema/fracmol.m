% nco2 nombre de mole dans une unité de d'air
%nair nombre de mole totale dans une unité d'air
%ppm 

%function F = fracmol(ppm )
%nCO2=ppm/44;
%nair=1000000/28.976;
%F=nCO2/nair

function F=fracmol(ppm)
F=ppm/1000000;


