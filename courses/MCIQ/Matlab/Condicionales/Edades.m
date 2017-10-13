clc, clear all
a = 1.1;
if a >= 0
    if a < 12
        disp('Niños')
    elseif a >= 12 && a < 18  
        disp('Adolecentes') 
    elseif a >= 18 && a < 30
        disp('Jovenes')
    elseif a >= 30 && a < 60
        disp('Adultos')
    elseif a >= 60 && a < 140
        disp('Adultos Mayores')
    else
        disp('Edad no valida 1')
    end
else
    disp('Edad no valida 2')
end
disp('Termino Programa')