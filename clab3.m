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
xlabel("Time");
ylabel("Amplitude");
label("Gate Function IIT2015120");



  