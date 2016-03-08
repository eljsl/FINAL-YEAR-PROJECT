tic
clear all
for n=1:101,
    t(n) = (n-1)/100;
    x(n) = 2*sin(2*pi*t(n));
end;
plot(t,x)
xlabel('x')
ylabel('t')
toc