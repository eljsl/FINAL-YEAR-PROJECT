t=[0:0.01:1]

y=sin(2*pi*5*t)
z=awgn(y,10);
figure(1)
plot(t,z,t,y)

[x,lags]=xcorr(y,z)
figure(2)
plot(lags,x)