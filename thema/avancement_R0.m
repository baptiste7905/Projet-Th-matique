%T=Température de l'eau (K)
%S=Salinité de l'eau (g/kg ou ‰)
%C(CO2)i=Concentration initilae en C02 = D
%C(H2CO3)i=Concentration initiale en H2C03 = B

function x=avancement_R0(T,S,D,B)
K= K0(T,S);
x=(K*D-B)/(1+K);

