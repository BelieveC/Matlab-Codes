syms t n
w0 = pi;
t0 = 2;
n = 1:25;
a0 = (1/t0) * int(1,t,0,1);
an = (2/t0) * int(1 * cos(n * w0 * t),t,0,1);
bn = (2/t0) * int(1 * sin(n * w0 * t),t,0,1);

t1 = 0:0.1:10;
y = 0.5 + 0.5 * square(pi *t1);

m = 1;

for r = [1 3 7 17]
        sum = a0;
        for j = 1:1:r
                sum = sum + (an(j)) * cos(n(j)*w0*t1)+(bn(j))*sin(n(j)*w0*t1);
        end
        subplot(2,2,m);
        m = m + 1
        plot(t1,sum,t1,y);
        xlabel('time');
        ylabel('sum');
        legend('Fourier Series','Square Wave');
end

