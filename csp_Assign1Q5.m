% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 1
% Question -- 5 (b)
%cutoff freq=0.6, stopband freq=0.91, passband ripple=0.001, 
%stopband ripple =0.01

[b1,a1]=butter(60, 0.6, 'low')  %order n=60
%h1=fvtool(b1,a1) 
figure(1)
freqz(b1,a1)
title('butterworth magnitude response');

[b2,a2] = cheby1(40, 10, 0.6);  %order n=40
figure(2)
%h2=fvtool(b2,a2)
freqz(b2,a2)
title('chebyshev magnitude response')
 
%Inference

%On increasing the order the filter of both butterworth & chebyshev 
%will corresponds to the ideal low pass filter with cutoff freq 0.6.