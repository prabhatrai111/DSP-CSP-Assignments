% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 1 
% Q.NO.1 -- All 3 parts are solved
clc
close all;
clear all;
t=0:0.00001:0.005;
fm=1000; % message freq
Am=input('enter the msg amplitude ');
fc=927071; %lambda=323.6m % freq=speed_of_light/lambda % carrier freq
Ac=input('enter the carrier amplitude ');
h=Am/Ac; %modulation index
fprintf('modulation index = Am/Ac = %f',h);
m=Am*cos(2*pi*fm*t); %message signal
c=cos(2*pi*fc*t); %carrier signal
x=m.*c;
Amp_mod=x+(Ac.*c);%Amplitude Modulation
DSB_SC_mod = Ac*m.*c; % DSB_SC Modulation
subplot(4,1,1),plot(t,m);
xlabel('time');
ylabel('amplitude');
legend('Message signal m(t)');
title('message');
subplot(4,1,2),plot(t,Ac*c);
xlabel('time');
ylabel('amplitude');
legend('Carrier signal c(t)');
title('carrier');
subplot(4,1,3),plot(t,Amp_mod);
xlabel('time');
ylabel('amplitude');
legend('Amplitude modulated signal');
title('Amplitude Modulated');
subplot(4,1,4),plot(t,DSB_SC_mod);
xlabel('time');
ylabel('amplitude');
legend('DSB-SC modulated signal');
title('DSB-SC Modulated');