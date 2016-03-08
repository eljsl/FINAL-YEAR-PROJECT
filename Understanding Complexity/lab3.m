for n=1:101,
    x(n)=3*sin(2*pi*(n-1)/100);
end;
plot(x)
xlabel('x')
ylabel('position in array')