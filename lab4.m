pkg load symbolic
t = -5:0.01:5;
u = heaviside(t)-heaviside(t-2);
v = heaviside(t)-heaviside(t-3);

t1 = -10:0.01:10;
y = 0.01*conv(u,v);
subplot(2,1,1);
plot(t1,y,'LineWidth',2);
ylabel("Conv of u(t)-u(t-2) and u(t)-u(t-3)");
xlabel("t");
title("Convulation | Lab3 | IIT2015120");


t2 = 0:0.01:6;
k = 2*(heaviside(t2) - heaviside(t2-3));

g = zeros(size(t2));
for i=1:length(t2)
  if t2(i)<=2
    g(i) = (-1/2)*t2(i)+2;
  elseif t2(i)>=4
    g(i) = (-1/2)*(t2(i)-6);
  else
    g(i) = 1;
  end
end

m = 0.01*conv(k,g);
t3 = 0:0.01:12;
subplot(2,1,2);
plot(t3,m,'LineWidth',2);
ylabel("Conv of u and v");
xlabel("t");