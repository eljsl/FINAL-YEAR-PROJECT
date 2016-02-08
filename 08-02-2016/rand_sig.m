x=-1+(1--1).*rand(1,1001);
t=[0:0.001:1];
y=sin(2*pi*1*t);
subplot(211)
plot(t,y)
axis([0 1 -1.5 1.5]);
subplot(212)
plot(t,x)
axis([0 1 -1.5 1.5]);

figure(2)
[z,lags]=xcorr(x,y);
plot(lags,z)

%filename = 'randomsignal.xlsx';
%xlswrite(filename,x,'A1')