%T=Température de l'eau (K)
%S=Salinité de l'eau (g/kg ou ‰)
%C(C03^2-)i=Concentration initilae en C03^2- = A
%C(H2CO3)i=Concentration initiale en H2C03 = B
%C(H+)i=Concentration initiale en H+ = C
%C(CO2)i=Concentration initilae en C02 = D

%eqn=4*y^3+4*(A-C)*y^2+(C^2-4*C*(1+A)+K)*y+B*C^2 - K*(B+x);
%S=solve(eqn,y,'Real',true);

function S=avancement_Req(T,S,A,B,C,D)
s=[];
x=avancement_R0(T,S,D,B);
K=Keq(T,S);
syms y;
p=[4 4*(A-C) (C^2-4*C*(1+A)+K) B*C^2-K*(B+x)];
r=roots(p);
r1 = r(1)
r2 = r(2)
r3 = r(3)
n=length(r);
%for i = 1:n 
%    if imag(r(i)) ==0 
%        s=[s + i];
%    end


S=r(2) % c'est la seule racine qui ssemble coherente


%if (length(s)) ~= 0 
 %   return s
    %faire les autres cas du style il n'y a aucun réél
    
end