function [ d1,d2,d3 ] = getdistancev3()
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
clear all
close all

%h1 data retrieval
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

%h2 data retrieval
M2 = csvread('Test2.csv',21,2,[21,2,721,6]);
time2=M2(:,1);
microtime2=time2*10^-9;
Source2=((M2(:,2))+(M2(:,3)))/2;
Record2=((M2(:,4))+(M2(:,5)))/2;
l2=length(M2)-1;
figure
subplot(211)
plot(microtime2,Source2)
subplot(212)
plot(microtime2,Record2)

%h3 data retrieval
M3 = csvread('Test3.csv',21,2,[21,2,721,6]);
time3=M3(:,1);
microtime3=time3*10^-9;
Source3=((M3(:,2))+(M3(:,3)))/2;
Record3=((M3(:,4))+(M3(:,5)))/2;
l3=length(M3)-1;
figure
subplot(211)
plot(microtime3,Source3)
subplot(212)
plot(microtime3,Record3)







% h1 cross correlation
[cc1,lags1]=xcorr(Source1,Record1);
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

% h2 cross correlation
[cc2,lags2]=xcorr(Source2,Record2);
[max2,I2] = max(abs(cc2));
p2=lags2(I2);
figure
plot(lags2,cc2)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags2(I2)))
totalt_ns2=abs(M2(2,1)-M2(end,1));
totalt_s2=totalt_ns2*10^-9;
timeconvert2=totalt_s2/l2;
timediff2=timeconvert2*abs(p2);
d2=1482*timediff2;

% h3 cross correlation
[cc3,lags3]=xcorr(Source3,Record3);
[max3,I3] = max(abs(cc3));
p3=lags3(I3);
figure
plot(lags3,cc3)
xlabel('lag')
ylabel('Correlation measure')
legend(sprintf('Maximum at lag %d',lags3(I3)))
totalt_ns3=abs(M3(2,1)-M3(end,1));
totalt_s3=totalt_ns3*10^-9;
timeconvert3=totalt_s3/l3;
timediff3=timeconvert3*abs(p3);
% d3=1482*timediff3;
d3=1482*timediff3;
end

