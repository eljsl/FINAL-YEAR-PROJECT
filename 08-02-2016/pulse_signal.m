fs=100e9;
D=[2.5 10 17.5]'*1e-9;
t=0:1/fs:2500/fs;
w=1e-9;
yp=pulstran(t,D,@rectpuls,w);

T=0:1/50e3:10e-3;
D=[0:1/1e3:10e-3; 0.8.^(0:10)]';
Y=pulstran(T,D,@gauspuls,10e3,.5);

subplot(211)
plot(t*1e9,yp);
axis([0 25 -0.2 1.2]);
xlabel('Time (ns)');
ylabel('Amplitude');
title('Rectangular Train');
subplot(212)
plot(T*1e3,Y)
xlabel('Time (ms)');
ylabel('Amplitude');
title('Gaussian Pulse Train');
hgcf = gcf;
hgcf.Color = [1,1,1];

A=xlsread('Test');