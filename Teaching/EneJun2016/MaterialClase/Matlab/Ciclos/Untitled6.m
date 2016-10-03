clc
clear all
limite = 5;
suma = 0;
x = 0.6;
for i = 0:limite
    suma = suma + x^i;
end
fprintf('La suma es: %.4f\n', suma)