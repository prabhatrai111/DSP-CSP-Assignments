% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 1 
% Q.NO.2 
clc
clear y Fs
%Read/Listining the sound in MATLAB
[y,fs] = audioread('Skrillex - Scary Bolly Dub.wav');
sound(y,fs);%Playing the wav file with sampling freq fs
fs2= fs/2;%change the sampling rate
%writing the audio to a new file with different sampling freq
audiowrite('Skrillex - Scary Bolly Dub2.wav',y,fs2); 
%Read the sound of new file which have different sampling freq
[y,fs2] = audioread('Skrillex - Scary Bolly Dub2.wav');
sound(y,fs2);
fs3= 2*fs;%change the sampling rate
%writing the audio to a new file with different sampling freq
audiowrite('Skrillex - Scary Bolly Dub3.wav',y,fs3); 
%Read the sound of new file which have different sampling freq
[y,fs3] = audioread('Skrillex - Scary Bolly Dub3.wav');
sound(y,fs3);
