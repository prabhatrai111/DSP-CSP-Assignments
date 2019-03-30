% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 2
%1(a)
pi=3.14;
x=pi/4;
y=pi/8;
%using Q(2.6) for 8 bit precision
x1=round(x*(2^6));
y1=round(y*(2^6));
% Addition
z=x1+y1;
answ_of_8bit_precised=z/(2^6)
original_addition= x+y
error=original_addition-answ_of_8bit_precised

