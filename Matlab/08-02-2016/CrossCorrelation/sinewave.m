clear all
t=0:0.01:1;
p=sin(2*pi*1*t);
delay=500;
y=sin(2*pi*1*(t-pi));
z=awgn(y,15);

figure(1)
subplot(211)
stem(t,p)
axis([0 1 -1.5 1.5])

subplot(212)
stem(t,z)
axis([0 1 -1.5 1.5])

[x,lags]=xcorr(p,z);

figure(2)
stem(lags,x)
[~,I]=max(abs(x))
legend(sprintf('Maximum at lag %d',lags(I)))