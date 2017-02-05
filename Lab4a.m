pkg load symbolic

t = -5:0.01:5;
u = heaviside(t)-heaviside(t-2);
v = heaviside(t)-heaviside(t-3);

t1 = -10:0.01:10;
y = 0.01*conv(u,v);

subplot(3,1,1);
plot(t,u,'LineWidth',2);
ylabel('u(t)');
xlabel('t');
title("Convulation | Lab3 | IIT2015120");

subplot(3,1,2);
plot(t,v,'LineWidth',2);
ylabel('v(t)');
xlabel('t');

subplot(3,1,3);
plot(t1,y,'LineWidth',2);
ylabel("Conv of u(t)-u(t-2) and u(t)-u(t-3)");
xlabel("t");

