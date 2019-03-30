% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 1
% Question -- 5(a)
%cutoff freq=0.6, stopband freq=0.91, passband ripple=0.001, 
%stopband ripple =0.01

[b1,a1]=butter(6, 0.6, 'low')  %order n=5.87 ~ 6
%h1=fvtool(b1,a1) 
figure(1)
freqz(b1,a1)
title('butterworth magnitude response');

[b2,a2] = cheby1(4, 10, 0.6);  %order n=3.11 ~ 4
figure(2)
%h2=fvtool(b2,a2)
freqz(b2,a2)
title('chebyshev magnitude response')