%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

%Problem A.6 - part 2 (x2(t))
clf;
n = 0; 
D_n = [-500:500]
for n = -500 : 1 : 500
    i = n+500+1;
    if n == 0
        D_n(i) = 0.5;
    else
        D_n(i) = (1/(pi.*n)).*sin(0.5.*pi*n);
end 
end
 
w = pi/10;
s = 300 + 1;
x = zeros(1,601);

for t = -300 : 1 : 300
    for n = -500 : 1 : 500
    m = n+500+1;    
    x(t+s) = x(t+s) + real(D_n(m).*exp(n.*1i*w*t));
    end
end
t = [ -300 : 1 : 300];
plot(t,real(x));
ylabel('Reconstruction of x2(t)');xlabel('t'); 
legend('x2(t)'); 
grid;