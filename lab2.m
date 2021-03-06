fs = 1000;
ts = 1/fs;
N = 1024;
t = [0:1:N-1]*(1/fs);
x = 0.8*cos(2*pi*100*t);
subplot(3,1,1);
plot(t,x);
axis([0 0.05 -1 1]);
grid;
xlabel('t');
ylabel('Amplitude');
title('Input signal IIT2015120');
x1 = fft(x,N);
k = 0:N-1;
Xmag = abs(x1);
subplot(3,1,2);
plot(k,Xmag);
grid;
xlabel('frequency');
ylabel('Amplitude');
axis([0 1100 0 350])
title('Amplitude of Transformed Signal');
Xphase = angle(x1)*(180/pi);
subplot(3,1,3);
plot(k,Xphase);
grid;
xlabel('Frequency');
ylabel('Angle degree');
axis([0 1100 -200 200]);
title('Phase of Transformed Signal');