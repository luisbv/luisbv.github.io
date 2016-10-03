clear all
clc
fprintf('Este programa suma los valores\ningresados por el usuario\n');

n = input('Cuantos numeros deseas sumar?');
suma = 0;


for i = 1:n
    fprintf('Ingresa el valor %d: ',i);
    x = input('');
    suma = suma + x;
end

fprintf('La suma (for) de %d numeros es %d\n', n, suma);
