clear all
fs=7418;

E=xlsread ('echotestdoc')

figure(1)
subplot(211)
plot(E)

timelag=0.23;
delta=round(fs*timelag);
alpha=0.5;

orig=[E;zeros(delta,1)];




