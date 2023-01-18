%T=Température de l'eau (K)
%S=Salinité de l'eau (g/kg ou ‰)
%K0=Constante d'équilibre de la réaction 0

function B=K0(T,S)
A = -60.2409+(9345.17/T)+23.3585*(log(0.01*T))+S*(0.023517-0.023656*(0.01*T)+0.0047036*(0.01*T)^2);
B=exp(A);
end
