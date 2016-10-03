function k = ke(m)
t = linspace(0,10,1000);
v = 4.*t.^2 + 9.8.*t;
k = 1/2*m.*v;
plot(t, k)