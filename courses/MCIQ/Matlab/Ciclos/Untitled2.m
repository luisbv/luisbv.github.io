clc
clear all


i = 1;
n = 10;
mult = 1; %pares
suma = 0; %impares
while i <= n
    if mod(i,2) == 0 %pares
        mult = mult * i;
    else % impares
        suma = suma + i;
    end
    i = i + 1;
end
fprintf('La multiplicacion de los\n pares del 1 al %d es: %d\n\n',n, mult)
fprintf('La suma de los\n impares del 1 al %d es: %d\n',n, suma)