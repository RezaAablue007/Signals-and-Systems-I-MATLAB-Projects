%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

%Problem A.5
n = (-500:500);
t = (-300:1:300);
w = pi*(0.1);
x = zeros(size(t));

for i = 1:length(n)-400 
    x(i)=exp(1i*n(i)*w*t(i));
end

figure (1);
plot (t,x,'k')
axis ([-300 300 -2 2]);
xlabel('Time "t" (Seconds)');
ylabel('x(t)');
title ('Reconstructed Fourier Coefficients of Problem A.5');
grid;