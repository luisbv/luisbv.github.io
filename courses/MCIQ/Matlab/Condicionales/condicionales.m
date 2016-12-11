clc
clear all
edad = input('Ingresa tu edad: ');
if (edad > 0)
    if (edad >= 18)
        fprintf('Es mayor de edad\n');
    else
        fprintf('Es menor de edad\n');
    end %endif (Octave)
else
    fprintf('Edad invalida\n');
end

% Tipos de operadores
% < menor que
% > mayor que
% <= menor igual que
% >= mayor igual que
% == igual que
% ~= diferente que
% && y (union)
% || o (interseccion)

% Tabla de verdad
% a|b|a y b|a o b|
% ----------------
% V|V|  V  |  V  |
% V|F|  F  |  V  |
% F|V|  F  |  V  |
% F|F|  F  |  F  |

% cal <  5           Insuficiente
% cal == 5           Suficiente
% cal > 5 y cal <= 7 Bien
% cal > 7 y cal <= 9 Notable
% cal == 10          Sobresaliente

cal = input('Ingresa la calificacion: ');

cal = round(cal);
if (cal >= 0 && cal <= 10)
    if (cal < 5)
        fprintf('Insuficiente\n');
    elseif (cal == 5)
        fprintf('Suficiente\n');
    elseif (cal > 5 && cal <=7)
        fprintf('Bien\n');
    elseif (cal > 7 && cal <= 9)
        fprintf('Notable\n');
    elseif (cal == 10)
        fprintf('Sobresaliente\n');
    end
else
    fprintf('Calificacion fuera de rango\n');
end
switch cal
    case 1
        fprintf('Insuficiente\n');
    case 2
        fprintf('Insuficiente\n');
    case 3
        fprintf('Insuficiente\n');
    case 4
        fprintf('Insuficiente\n');
    case 5
        fprintf('Suficiente\n');
    case 6
        fprintf('Bien\n');
    case 7 
        fprintf('Bien\n');
    case 8
        fprintf('Notable\n');
    case 9
        fprintf('Notable\n');
    case 10
        fprintf('Sobresaliente\n');
    otherwise
        fprintf('Calificacion fuera de rango\n');
end

fprintf('Opciones\n')
fprintf('1.Temperatura Grados Celsius\n')
fprintf('2.Temperatura Grados Farenheit\n')
opcion = input('Elige la opcion deseada: ');

switch opcion
    case 1
        fprintf('Elegiste Grados Celsius\n')
    case 2
        fprintf('Elegiste Grados Farenheit\n')
    otherwise
        fprintf('Opcion no disponible\n')
end

