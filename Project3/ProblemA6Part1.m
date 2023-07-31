%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

%Problem A.6 - part 1 (x1(t))
clf;
n = 0; 
D_n = [-500 : 500]
w = pi/10
t = [-300:1:300]

for n = -500 : 1 : 500     
    if(abs(n)==1)
        D_n(n+500+1) = 0.25;
    elseif(abs(n) == 3)
        D_n(n+500+1) = 0.5;
    else
       D_n(n+500+1) = 0;   
end
end
 s = 300 + 1;
 x = zeros(1,601);
 for t = -300 : 1 : 300
    for n = -500 : 1 : 500
        m = n+500+1;    
        x(t+s) = x(t+s) + real(D_n(m).*exp(n.*1i*w*t));
    end
 end
 
t=[-300:1:300];
plot(t,real(x));
ylabel('Reconstruction of x1(t)');xlabel('t'); 
legend('x1(t)'); 
grid;