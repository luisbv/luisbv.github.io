clear all
clc

cal = input('Ingresa tu calificacion: ');
if cal >= 0
    if cal < 5
        fprintf('Insuficiente\n');
    elseif cal == 5
        fprintf('Suficiente\n');
    elseif cal >5 && cal <= 7
        fprintf('Bien\n');
    elseif cal >7 && cal <=9
        fprintf('Notable\n');
    elseif cal == 10
        fprintf('Sobresaliente\n');
    else
        fprintf('Calificacion fuera de rango\n');
    end
else
    fprintf('Calificacion fuera de rango\n');
end