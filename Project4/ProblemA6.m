%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Problem A.6

% Magnitude and Phase Spectra for w+(t) function
N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PulseWidth), zeros(1, N-PulseWidth)];
wPLUSoft = x.* (exp(1i*(pi/3).*t));
wPLUSoftFT = fft(wPLUSoft);
f = [-(N/2):1:(N/2)-1]; 

figure (1); 

subplot (2,1,1);
plot (f, fftshift(abs(wPLUSoftFT))); grid on;
xlabel ('t'); ylabel ('|\omega+(t)|');
title ('Magnitude Spectra of \omega+(t)');

subplot (2,1,2); 
plot (f, fftshift(angle(wPLUSoftFT))); grid on;
xlabel ('t'); ylabel ('\angle\omega+(t)');
title ('Phase Spectra of \omega+(t)');

% Magnitude and Phase Spectra for w-(t) function
N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PulseWidth), zeros(1, N-PulseWidth)];
wMINUSoft = x.* (exp(-1i*(pi/3).*t));
wMINUSoftFT = fft(wMINUSoft);
f = [-(N/2):1:(N/2)-1]; 

figure (2); 

subplot (2,1,1);
plot (f, fftshift(abs(wMINUSoftFT))); grid on;
xlabel ('t'); ylabel ('|\omega-(t)|');
title ('Magnitude Spectra of \omega-(t)');

subplot (2,1,2); 
plot (f, fftshift(angle(wMINUSoftFT))); grid on;
xlabel ('t'); ylabel ('\angle\omega+(t)');
title ('Phase Spectra of \omega-(t)');

% Magnitude and Phase Spectra for wc(t) function
N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PulseWidth), zeros(1, N-PulseWidth)];
wcoft = x.*(cos((pi/3).*t));
wcoftFT = fft(wcoft);
f = [-(N/2):1:(N/2)-1]; 

figure (3); 

subplot (2,1,1);
plot (f, fftshift(abs(wcoftFT))); grid on;
xlabel ('t'); ylabel ('|\omegac(t)|');
title ('Magnitude Spectra of \omegac(t)');

subplot (2,1,2); 
plot (f, fftshift(angle(wcoftFT))); grid on;
xlabel ('t'); ylabel ('\angle\omegac(t)');
title ('Phase Spectra of \omegac(t)');