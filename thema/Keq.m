%T=Température de l'eau (K)
%S=Salinité de l'eau (g/kg ou ‰)
%K1=Constante d'équilibre de la réaction 1
%K2=Constante d'équilibre de la réaction 2
%Keq=Constante d'équilibre de la réaction 1 + réaction 2

function Keq= Keq(T,S)
pK1=(3670.7/T)-62.008+9.7944*log(T)-0.0118*S+0.000116*S^2;
pK2=(1394.7/T)+4.777-0.0184*S+0.000118*S^2;
K1=10^(-pK1);
K2=10^(-pK2);
Keq=K1*K2;
end
