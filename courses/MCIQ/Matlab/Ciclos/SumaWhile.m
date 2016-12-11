clear all
clc

n = 10;
suma = 0;
i = 1;
while i <= n
    suma = suma + i;
    i = i + 1;
end

fprintf('La suma (while) de %d numeros es %d\n', n, suma);