fs = 1000;
ts = 1/fs;
pkg load symbolic;
pkg load signal;
t = -5:0.001:5;
f = zeros(size(t));
for i = 1:length(t)
    if abs(t(i)) <= 1/2
        f(i) = 1;
    else
        f(i) = 0;
    end
end
figure;
subplot(3,1,1);
plot(t,f,'LineWidth',2);
xlabel('time');
ylabel('f(t)');
title('Gate Function IEC2015084');
 
omega = [-50 : 0.1 : 50];
F = zeros(size(omega));
for i =1 : length(omega)
    F(i) = trapz(t,f.*exp(-j*omega(i)*t));
end
F_magnitude = abs(F);
subplot(3,1,2);
plot(omega./(2*pi),F_magnitude,'LineWidth',2);
ylim([0 1])
xlabel('Frequency');
ylabel('|F(j\omega)|');
title('Fourier transform magnitude of Gate Function');
 
F_angle = angle(F);
subplot(3,1,3);
plot(omega./(2*pi),F_angle.*(180/pi),'LineWidth',2);
xlabel('Frequency');
ylabel('angle F(j\omega)');
title('Fourier transform phase of Gate Function');