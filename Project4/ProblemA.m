%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Problem A.1

N = 100; 
PulseWidth = 10;
t = [0:1:(N-1)];

x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];

z = conv (x,x);

s = [0:1:2*(N-1)]

figure (1);
plot (s,z); grid on; axis ([-1 30 -1 10])
xlabel ('t'); ylabel ('z(t) = x(t) * x(t)');
title ('Convolution Graph of z(t)');

% Problem A.2

Xw=fft(x); % w = 2 x pi x f

f = [-(N/2):1:(N/2)-1]*(1/N);

Zw = Xw .* Xw;

% Problem A.3

figure (2);

subplot (2,1,1);
plot (f, fftshift(abs(Zw)));  grid on;
xlabel('\omega');
ylabel('Magnitude of Z(\omega)');

subplot (2,1,2);
plot (f, fftshift(angle(Zw)));  grid on;
xlabel('\omega');
ylabel('Phase Spectra of Z(\omega)');

% Problem A.4
xFreqDom = fft(x);
zFreqDom = xFreqDom.*xFreqDom;

zTimeDom = ifft(zFreqDom);

figure (3);
plot (zTimeDom); grid on;
axis ([-1 30 -1 10])
title ('Magnitude Spectra of Convolution in Time Domain');
xlabel ('t'); ylabel ('|z(t)|');

figure (4);
subplot (2,1,1); plot (f, fftshift(abs(zFreqDom))); grid on;
axis ([-1 1 -1 100]);
title ('Magnitude Spectra of Convolution in Frequency Domain');
xlabel ('\omega'); ylabel ('|z(\omega)|');

subplot (2,1,2); plot (f, fftshift(angle(zFreqDom))); grid on;
axis ([-1 1 -10 10]);
title ('Phasee Spectra of Convolution in Frequency Domain');
xlabel ('\omega'); ylabel ('\angle z(\omega)');