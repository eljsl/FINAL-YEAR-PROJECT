Source = [5 4];
a=[1 1];
b=[1 8];
c=[6 8];
d=[6 1];
c=1482;
delayab=0.5;
d=c*delayab;

%h1 data retrieval
M1 = csvread('Test1.csv',21,2,[21,2,721,6]);
time1=M1(:,1);
microtime1=time1*10^-9;
Source1=((M1(:,2))+(M1(:,3)))/2;
Record1=((M1(:,4))+(M1(:,5)))/2;
l1=length(M1)-1;
% figure
% subplot(211)
% plot(microtime1,Source1)
% subplot(212)
% plot(microtime1,Record1)

%h2 data retrieval
M2 = csvread('Test2.csv',21,2,[21,2,721,6]);
time2=M2(:,1);
microtime2=time2*10^-9;
Source2=((M2(:,2))+(M2(:,3)))/2;
Record2=((M2(:,4))+(M2(:,5)))/2;
l2=length(M2)-1;
% figure
% subplot(211)
% plot(microtime2,Source2)
% subplot(212)
% plot(microtime2,Record2)

% h1 cross correlation
[cc1,lags1]=xcorr(Record1,Record2);
[max1,I1] = max(abs(cc1));
p1=lags1(I1);
figure
plot(lags1,cc1)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags1(I1)))
totalt_ns1=abs(M1(2,1)-M1(end,1));
totalt_s1=totalt_ns1*10^-9;
timeconvert1=totalt_s1/l1;
timediff1=timeconvert1*abs(p1);
d1=1482*timediff1;