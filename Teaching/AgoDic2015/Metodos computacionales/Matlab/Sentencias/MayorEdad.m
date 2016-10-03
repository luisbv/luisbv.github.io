clear all
clc
%Ingresar edad desde el teclado
edad = input('Ingresa tu edad: ');

if edad >= 18 %Comprobar si es mayor de edad
    %Imprimir
    fprintf('Eres mayor de edad\n');
else %Si no es mayor, entonces es menor de edad
    %Imprimir
    fprintf('Eres menor de edad\n');
end