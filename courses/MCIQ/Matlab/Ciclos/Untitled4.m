clc
clear all

A = [1 2 3;
    4 5 6;
    7 8 9]
% f filas
% c columnas

contador = 1;
for f = 1:3
    for c = 1:3
        b(f,c) = contador;
        contador = contador + 1;
    end
end
