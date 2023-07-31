%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Demo FT from Lab 4 manual

N = 100; 
PulseWidth = 10;
t = [0:1:(N-1)];

x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];

stairs(t,x); grid on;
figure (1);
axis ([-20,20, -0.1, 1.1])

Xf = fft(x);

f = [-(N/2):1:(N/2)-1]*(1/N);

figure (2);

subplot(211); plot(f,fftshift( abs(Xf))); grid on;
subplot(212); plot(f,fftshift(angle(Xf))); grid on;

xhat = ifft(Xf);