function metodosnumericos()
    function [xp, m, i] = biseccion(f, x1, x2, n, tol)
        i = 1; f1 = f(x1);
        while i <= n
            xp = (x1 + x2) / 2;
            fp = f(xp);
            m(i,1) = x1;
            m(i,2) = x2;
            m(i,3) = xp;
            m(i,4) = (x2-x1)/2;
            if fp * f1 > 0
                m(i,5) = 1;
            else
                m(i,5) = 0;
            end
            if fp == 0 || (x2-x1)/2 <= tol
                i = i + 1;
                break
            end
            if fp * f1 > 0
                x1 = xp;
            else
                x2 = xp;
            end
            i = i + 1;
        end
        i = i - 1;
    end
    clear all
    clc
    f = @(x) (x+2)*(x+1)*(x)*(x-1)^3*(x-2);
    x1 = -3;
    x2 = 2.5;
    n = 5;
    tol = 1e-6;
    [r, rs, i] = biseccion(f,x1,x2,n,tol);
    fprintf('El valor de la raiz es %.5f\n',r)
    plot(1:i,rs(:,3)', 'k.','linewidth',3)
    xlabel('Iteracion')
    ylabel('Valor de xp')
    hold on
    plot(1:i,rs(:,3), 'k--')
    hold off
    disp('    x1        x2        xp        error     f1*fp')
    disp(rs)
end