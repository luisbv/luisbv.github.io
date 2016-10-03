function numero = lee_numero_positivo
%lee_numero_positivo: Pide un numero
% y se asegura que sea positivo
numero = -1;
while numero < 0
    numero = input('Ingresa un numero positivo: ');
    if(numero < 0)
        disp('ERROR: El número debe ser positivo')
    end
end
end