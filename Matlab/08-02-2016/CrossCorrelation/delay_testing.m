fs=1000;
freq=2;
st=1/fs;
t=[0:1]*st;
y=cos(2*pi*freq*t);

delay=50*st;
y1=cos(2*pi*freq*(t-delay));

subplot(211)
plot(t,y,t,y1)

[c,lag]=xcorr(y,y1);
[~,I]=max(abs(c));
T=lag(I)

subplot(212)
plot(lag,c/max(c))