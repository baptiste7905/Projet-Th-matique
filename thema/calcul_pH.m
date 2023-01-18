%T=Température de l'eau (K)
%S=Salinité de l'eau (g/kg ou ‰)
%C(C03^2-)i=Concentration initilae en C03^2- = A
%C(H2CO3)i=Concentration initiale en H2C03 = B
%C(H+)i=Concentration initiale en H+ = C  
%%C(CO2)i=Concentration initilae en C02 = D  OK

function calcul_pH(P,T,S,ppm,pH0)
Cco2 = concen(P,T,ppm);% concentration de CO2 dans l'eau

%calcul des differentes constatntes de réaction
K0=exp( -60.2409+(9345.17/T)+23.3585*(log(0.01*T))+S*(0.023517-0.023656*(0.01*T)+0.0047036*(0.01*T)^2));
pK1=(3670.7/T)-62.008+9.7944*log(T)-0.0118*S+0.000116*S^2;
pK2=(1394.7/T)+4.777-0.0184*S+0.000118*S^2;
K1=10^(-pK1);
K2=10^(-pK2);

%calcul des concentration initiales 
Ch2co3=K0*Cco2;
Ch = 10^(-pH0)
Chco3 = K1*Ch2co3/Ch;
Cco3 = K2*Chco3/Ch;


y=avancement_Req(T,S,Cco3,Ch2co3,Ch,Cco2)
pH=-log10(Ch+2*y)
end
