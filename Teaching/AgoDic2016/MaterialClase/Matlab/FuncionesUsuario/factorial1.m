function [fact] = factorial1(n)
%Factorial1(x)
%Calculo de un factorial de un n�mero n
fact = 1;
for i = 1:n
    fact = fact*i;
end

end