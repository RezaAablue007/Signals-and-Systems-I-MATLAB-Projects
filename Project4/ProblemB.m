%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Problem B.1

data = load ("Lab4_Data.mat");

xspeech = data.xspeech;
hLPF2000 = data.hLPF2000; % 2000 Hz passband.
hLPF2500 = data.hLPF2500; % 2500 Hz passband.
hChannel = data.hChannel; 

carrier_1 = osc (3500, 80000); % First carrier signal.
carrier_modulate = carrier_1 .* xspeech; % Modulated signal.
% Testing command: MagSpect (carrier_modulate)

convoluted_1 = conv (carrier_modulate, hChannel);
% Testing command: MagSpect (convoluted_1)

carrier_2 = osc (3500, 80810); % Second carrier signal
carrier_demodulate = carrier_2 .* convoluted_1; % Demodulated signal.
% Testing command: MagSpect (carrier_demodulate)

lowPassFilter = conv (carrier_demodulate, hLPF2000);
% Testing command: MagSpect (lowPassFilter)
% This command convolutes the demodulated signal with the lowpass filter to
% recover the original signal.