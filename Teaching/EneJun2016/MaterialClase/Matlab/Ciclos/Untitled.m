clc
clear all
n = input('Da un numero n: ');
suma = 0;
for i = 1:n
    suma = suma + i;
end

fprintf('La suma del 1 al %d es: %d\n',n, suma)