function primos(n)

for i=1:n
    if isprime(i) | i==1
        fprintf('%d ',i);
    end
end
fprintf('\n');
end