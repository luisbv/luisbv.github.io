clear all
clc

n = input('Ingresa el numero para calcular el factorial: ');
fact = 1;
for i = 1:n
    fact = fact * i;
end

fprintf('El factorial de %d es %d\n', n, fact);
