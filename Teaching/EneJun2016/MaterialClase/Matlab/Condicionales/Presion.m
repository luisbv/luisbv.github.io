clear all
clc
fprintf('Este programa calcula la presion en atm\n')
fprintf('Escribe la palabra entre comillas simples\n')
unidades = input('Ingresa atm o psi: ');
a = 5;
factor  = 0;
Pi = 0;
switch unidades
    case 'atm'
        factor = 1;
        Pi = input('Ingrese Presion en atm: ');
    case 'psi'
        factor = 3.5;
        Pi = input('Ingrese Presion en psi: ');
    otherwise
        fprintf('Unidades no disonibles'); 
end

P = Pi * factor + a /2;
fprintf('La presion en atm es %.4f', P);