
% XC02 : fraction molaire de CO2 dans l'air
%Phi : coéfficient de fuagacité
%P : pression totale
%PH20sat : pression saturant de l'H20 en bar
%I force ionique(=0,7)
%Kco2 : constante de dissolution
%Ksat : constante de dissolution du CO2 à pression saturante
%Ketsat : constante apparente de dissolution du CO2 à pression saturante
%Ga : coefficient d'activité du CO2
%Cco2 : concentration de co2 
I=0.7;
T=293;
X=[];
Y=[];
for i = 273:300
    X=[X,i];
    Y=[Y,concen(1.13,i,400)];
end
plot(X,Y)



