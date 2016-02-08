clear all
t=(0:0.01:1);
sig1=sin(2*pi*1*t);
sig2=cos(2*pi*10*t);
figure(1)
subplot(2,1,1)
plot(t,sig1);
subplot(2,1,2)
plot(sig2);
[r,lags]=xcorr(sig1,sig2);
figure(2)
plot(lags,r)
[~,I]=max(abs(r));
legend(sprintf('Max at lag %d',lags(I)))

f=500;
samplefreq=8000;
t=0:0.01:40;
A=1;
y=A*sin(2*pi*f/samplefreq*t);
figure(3)
plot(t,y)

fs=100E9;
D=[2.5 10 17.5]'*1e-9;
t=0:1/fs:2500/fs;
w=1e-9;
yp=pulstran(t,D,@rectpuls,w);
figure(4)
plot(yp,t)