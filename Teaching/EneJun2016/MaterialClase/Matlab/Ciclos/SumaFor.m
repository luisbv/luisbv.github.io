clear all
clc

n = 10;
suma = 0;
for i = 1:n
    suma = suma + i;
end

fprintf('La suma (for) de %d numeros es %d\n', n, suma);
