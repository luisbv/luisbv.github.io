clc, clear all
R = 8.2;
V= 10;
n = 5;
T = input('Ingresa la Temperatura:');
disp('Elige las unidades de la Temperatura')
disp('1- K')
disp('2-°F')
disp('3-°C')
op = input('Ingresa la opcion:');
clc
switch op
    case 1
        disp('Se eligió la temperatatura en K')
        P = n*R*T/V;
    case 2
        disp('Se eligió la temperatatura en °F')
        T = (T - 32)*9/5 + 273.15;
        P = n*R*T/V;
    case 3
        disp('Se eligió la temperatatura en °C')
        T = T + 273.15;
        P = n*R*T/V;
    otherwise
        disp('Opcion no valida')
        disp('Se usara la Temperatura en Kelvin')
        P = n*R*T/V;
end

fprintf('La presión es de %.3f atm\nde un volumen de %.3fL\ncon un número de moles %.3f\ny a una temperatura de %.3f K\n', P, V, n, T)