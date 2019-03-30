% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 1 
% Q.NO.3 

% (a)y(n)=x(n)+0.6x(n-1)
w = linspace(-5*pi,5*pi);
hz = freqz([1 6/10],1,w); % H(z)=1+0.6z^-1
subplot(3,3,1)
plot(w/pi,abs(hz));
xlabel('w/pi');ylabel('Magnitude');title('Magnitude response of (a) y(n)=x(n)+0.6x(n-1)');
subplot(3,3,2)
zplane(roots([1 6/10]));ylabel('zplane');title('zplane of (a) y(n)=x(n)+0.6x(n-1)');
subplot(3,3,3)
plot(w/pi,angle(hz));xlabel('w/pi');ylabel('phase');title('phase response of (a) y(n)=x(n)+0.6x(n-1)');

% (b)y(n)=x(n)-0.9x(n-1)
w = linspace(-5*pi,5*pi);
hz = freqz([1 -9/10],1,w); % H(z)=1-0.9z^-1
subplot(3,3,4)
plot(w/pi,abs(hz));xlabel('w/pi');ylabel('Magnitude');title('Magnitude response of (b)y(n)=x(n)-0.9x(n-1)');
subplot(3,3,5)
zplane(roots([1 -9/10]));ylabel('zplane');title('zplane of (b)y(n)=x(n)-0.9x(n-1)');
subplot(3,3,6)
plot(w/pi,angle(hz));xlabel('w/pi');ylabel('phase');title('phase response of (b)y(n)=x(n)-0.9x(n-1)');

% (c) y(n)=y(n-1)+0.3x(n)+0.1x(n-1)   
w = linspace(-5*pi,5*pi);
hz = freqz([3/10 1/10],[1 -1],w); % H(z)=(0.3+0.1z^-1)/(1-z^-1)
subplot(3,3,7)
plot(w/pi,abs(hz));xlabel('w/pi');ylabel('Magnitude');title('Magnitude response of (c) y(n)=y(n-1)+0.3x(n)+0.1x(n-1)  ');
subplot(3,3,8)
zplane(roots([3/10 1/10]),roots([1 -1]));ylabel('zplane');title('zplane of (c) y(n)=y(n-1)+0.3x(n)+0.1x(n-1)');
subplot(3,3,9)
plot(w/pi,angle(hz));xlabel('w/pi');ylabel('phase');title('phase response of (c) y(n)=y(n-1)+0.3x(n)+0.1x(n-1)');