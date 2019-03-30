% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 2
%1(b)
pi=3.14;
x=pi/6;
y=-pi/8;
%using Q(2.6) for 8 bit precision
x1=round(x*(2^6));
y1=round(y*(2^6));
% Addition
z1=x1+y1;
answ_of_8bit_precised=z1/(2^6)
original_addition= x+y

%using Q(2.14) for 16 bit precision
x2=round(x*(2^14));
y2=round(y*(2^14));
% Addition
z2=x2+y2;
answ_of_16bit_precised=z2/(2^14)
error_of_8bit=original_addition-answ_of_8bit_precised
error_of_16bit=original_addition-answ_of_16bit_precised
