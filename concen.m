function Cco2 =concen(P,T,ppm)
XC02= fracmol(ppm);
I=0.7
K = Kco2(T,P,I);
Cco2 = XC02*P/(Kco2(T,P,I)*helgesson(T,I))
