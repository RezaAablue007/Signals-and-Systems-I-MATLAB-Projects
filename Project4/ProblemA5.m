%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Problem A.5
% Case 1: Pulse width of 10
N = 100; PulseWidth = 10; 
t = [0:1:(N-1)]; x = [ones(1,PulseWidth), zeros(1, N-PulseWidth)];
xFT = fft(x); f = [-(N/2):1:(N/2)-1]*(1/N);

figure (1);
subplot (2,1,1); plot (f,fftshift(abs(xFT))); grid on;
xlabel('\omega'); ylabel ('|Z(\omega)|');
title ('Magnitude Spectra of Z(\omega) (Pulse width of 10)');

subplot (2,1,2); plot (f, fftshift(angle(xFT))); grid on;
xlabel('\omega'); ylabel ('\angle Z(\omega)');
title ('Phase Spectra of Z(\omega) (Pulse width of 10)');

% Case 2: Pulse width of 5
N = 100; PulseWidth = 5; 
t = [0:1:(N-1)]; x = [ones(1,PulseWidth), zeros(1, N-PulseWidth)];
xFT2 = fft(x); f = [-(N/2):1:(N/2)-1]*(1/N);

figure (2);
subplot (2,1,1); plot (f,fftshift(abs(xFT2))); grid on;
xlabel('\omega'); ylabel ('|Z(\omega)|');
title ('Magnitude Spectra of Z(\omega) (Pulse width of 5)');

subplot (2,1,2); plot (f, fftshift(angle(xFT2))); grid on;
xlabel('\omega'); ylabel ('\angle Z(\omega)');
title ('Phase Spectra of Z(\omega) (Pulse width of 5)');

% Case 3: Pulse width of 25
N = 100; PulseWidth = 25; 
t = [0:1:(N-1)]; x = [ones(1,PulseWidth), zeros(1, N-PulseWidth)];
xFT3 = fft(x); f = [-(N/2):1:(N/2)-1]*(1/N);

figure (3);
subplot (2,1,1); plot (f,fftshift(abs(xFT3))); grid on;
xlabel('\omega'); ylabel ('|Z(\omega)|');
title ('Magnitude Spectra of Z(\omega) (Pulse width of 25)');

subplot (2,1,2); plot (f, fftshift(angle(xFT3))); grid on;
xlabel('\omega'); ylabel ('\angle Z(\omega)');
title ('Phase Spectra of Z(\omega) (Pulse width of 25)');