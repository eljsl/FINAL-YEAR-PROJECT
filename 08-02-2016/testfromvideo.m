clear all
x=[1 3 -2 4];
y=[2 3 -1 3];
z=[100 -1 4 -2];
r=xcorr(x,y);
s=xcorr(y,z);
figure(1)
subplot(211)
plot(r)
subplot(212)
plot(x)


t=[0:100-1]/100;
s1=cos(2*pi*10*t);
figure(2)
plot(s1)

a = [0.1 0.2  -0.1 4.1 -2 1.5 0 ];
b = [0.1 4 -2.2 1.6 0.1 0.1 0.2];

cor_seq=xcorr(a,b);
[cor_seq lags]=xcorr(a,b)
figure(3)
subplot(211)
plot(cor_seq)
subplot(212)
plot(lags,cor_seq)