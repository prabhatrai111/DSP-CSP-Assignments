% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 1
% Question -- 8(a.2)
[y,fs] = audioread('Skrillex - Scary Bolly Dub.wav');
[z,p,k] = cheby1(4, 10, 0.6);  %order n=3.11 ~ 4
[sossb,gsb] = zp2sos(z,p,k);
filtered_signal_from_cheby = filtfilt(sossb, gsb, y);
sound(filtered_signal_from_cheby,fs)