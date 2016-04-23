clear all
close all
clc

a=rand(8000,1);
t=1:0.1:100;
b=sin(2*pi*t*10);

figure
subplot(211)
plot(a)
subplot(212)
plot(b)

[cc1,lags1]=xcorr(a,b);


[max1,I1] = max(abs(cc1));
p1=lags1(I1);
figure
plot(lags1,cc1)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags1(I1)))