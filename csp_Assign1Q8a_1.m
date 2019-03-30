% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 1
% Question -- 8(a.1)
[y,fs] = audioread('Skrillex - Scary Bolly Dub.wav');
[z,p,k]=butter(6, 0.6, 'low');  %order n=5.87 ~ 6
%[z,p,k] = cheby1(n,Rs,Ws,'stop');
[sossb,gsb] = zp2sos(z,p,k);
filtered_signal_from_butterworth = filtfilt(sossb, gsb, y);
sound(filtered_signal_from_butterworth,fs)