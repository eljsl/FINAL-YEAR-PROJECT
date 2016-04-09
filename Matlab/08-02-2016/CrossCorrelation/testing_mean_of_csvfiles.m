M1 = csvread('Test1.csv',21,2,[21,2,721,6]);

time1=M1(:,1);
microtime1=time1*10^-9;

Source1=((M1(:,2))+(M1(:,3)))/2;
Record1=((M1(:,4))+(M1(:,5)))/2;

l1=length(M1)-1;
figure
subplot(211)
plot(microtime1,Source1)
subplot(212)
plot(microtime1,Record1)
