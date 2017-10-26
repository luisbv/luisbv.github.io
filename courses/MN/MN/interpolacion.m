function interpolacion
    clear all
    clc
    continua = 1;
    while continua
        fprintf('Quieres interpolar para valor de x o y?\n')
        fprintf('1-X\n2-Y\n')
        op = input('Elige la opcion: ');
        xs = 0:2.5:20;
        ys = [91.4 89 84.7 79.5 71.9 54.3 42.7 20.4 0];
        plot(xs, ys, 'k.', 'MarkerSize', 10)
        if op == 1
            x = input('Ingresa valor de x a interpolar: ');
        elseif op == 2
            x = input('Ingresa valor de y a interpolar: ');
            temp = xs;
            xs = ys;
            ys = temp;
        else
            fprintf('Opcion incorrecta\n')
            continua = 0;
        end
        if op == 1
            if (x > xs(length(xs)) || x < xs(1))
                fprintf('El valor no se encuentra dentro de los datos\n')
                continua = 0;
            end
        else
            if (x < xs(length(xs)) || x > xs(1))
                fprintf('El valor no se encuentra dentro de los datos\n')
                continua = 0;
            end
        end
        if continua
            for i = 1:(length(xs) - 1)
                x0 = xs(i);
                x1 = xs(i+1);
                if op == 1
                    if (x >= x0) && (x <= x1)
                        fprintf('El valor se encuentra entre %.2f y %.2f\n',x0, x1)
                        break
                    end
                else
                    if (x <= x0) && (x >= x1)
                        fprintf('El valor se encuentra entre %.2f y %.2f\n',x0, x1)
                        break
                    end
                end
            end
            fx0 = ys(i);
            fx1 = ys(i+1);
            y = fx0 + (fx1 - fx0) / (x1 - x0) * (x - x0);
            if (op == 1)
                fprintf('El valor de y es %.3f cuando x es %.3f\n',y,x);
            else
                fprintf('El valor de x es %.3f cuando y es %.3f\n',y,x);
            end
            hold on
            if op == 1
                plot(x, y, 'rp', 'MarkerSize', 20)
            else
                plot(y, x, 'rp', 'MarkerSize', 20)
            end
            hold off
            continua = 0;
        else
            fprintf('\nQuieres ingresar otro valor?\n')
            fprintf('1-Si\n2-No\n')
            op1 = input('Elige la opcion: ');
            
            if op1 == 1
                continua = 1;
            else
                continua = 0;
            end
        end
    end
end