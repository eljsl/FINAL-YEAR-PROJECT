M = csvread('VB8012-308BB8A_2016-03-22_12-28-30.csv',21,2,[21,2,721,4]);
time=M(:,1);
C1h1=M(:,2);
C1h2=M(:,3);
figure(1)
subplot(211)
plot(time,C1h1)
subplot(212)
plot(time,C1h2)

M = csvread('VB8012-308BB8A_2016-03-22_12-28-58.csv',21,2,[21,2,721,4]);
time=M(:,1);
C2h1=M(:,2);
C2h2=M(:,3);
figure(2)
subplot(211)
plot(time,C2h1)
subplot(212)
plot(time,C2h2)
