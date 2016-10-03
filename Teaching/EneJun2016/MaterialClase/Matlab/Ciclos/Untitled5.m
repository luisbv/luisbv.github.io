clc
clear all
x = 0.6;
precision = 1 * 10 ^(-4);
suma = 0;
termino = 1;
while abs(termino) >= precision
    suma = suma + termino;
    termino = termino * x;
end
fprintf('La suma es: %.4f\n', suma)