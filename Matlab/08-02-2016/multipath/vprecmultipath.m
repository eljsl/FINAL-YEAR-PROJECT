clear all
close all
M1 = xlsread('Test1Data.xlsx',1);
time1=M1(2:end,1);
microtime1=time1*10^-9;
Record1=M1(2:end,7);
Source1=M1(2:end,6);
l1=length(M1)-1;
close all
figure(1)
subplot(211)
plot(Source1)
subplot(212)
plot(microtime1,Record1)
grid on

cc1=xcorr(Source1,Record1);
figure
plot(cc1)

Vpenv=max(Source1);
nenv=l1;
Vmaxcorr=max(cc1);

Vprec=(Vmaxcorr/Vpenv)*(2/nenv);