%OperBas.m
clear all
clc
a = input('Introduce el valor de a: ');
b = input('Introduce el valor de b: ');

fprintf('La suma de %d y %d es %d\n', a,b,a+b)
fprintf('La resta de %d y %d es %d\n', b,a,b-a)
fprintf('La multiplicacion de %d por %d es %d\n', a,b,a*b)
fprintf('La division de %d entre %d es %.0f\n', b,a,b/a)