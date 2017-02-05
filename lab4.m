pkg load symbolic

t2 = 0:0.01:6;
k = 2*(heaviside(t2) - heaviside(t2-3));
subplot(3,1,1);
plot(t2,k,'LineWidth',2);
title("Convulation | Lab3 | IIT2015120");
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

subplot(3,1,2);
plot(t2,g,'LineWidth',2);

m = 0.01*conv(k,g);
t3 = 0:0.01:12;
subplot(3,1,3);
plot(t3,m,'LineWidth',2);
ylabel("Conv of u and v");
xlabel("t");