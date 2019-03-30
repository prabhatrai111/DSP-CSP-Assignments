% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 1
% Question -- 9
clc
clear all;
% At N=100
N=100;
x1=randn(1,N);
y1=[sqrt(10) * x1] + mean(x1);  % using variance = 10
variance_when_N_is_100=var(y1)
mean_when_N_is_100=mean(x1)
% At N=1000
N=1000;
x2=randn(1,N);
y2=[sqrt(10) * x2] + mean(x2); % using variance = 10
variance_when_N_is_1000=var(y2)
mean_when_N_is_1000=mean(x2)
% At N=10000
N=10000;
x3=randn(1,N);
y3=[sqrt(10) * x3] + mean(x3); % using variance = 10
variance_when_N_is_10000=var(y3)
mean_when_N_is_10000=mean(x3)