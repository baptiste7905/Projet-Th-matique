function P_Sat=P_Sat_Antoine(T)

P_Sat = 10.^(5.40221-(1838.675/(T-31.737)));% Équation de Goff-Gratch

end