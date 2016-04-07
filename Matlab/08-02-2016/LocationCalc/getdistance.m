function [ r1,r2,r3 ] = getdistance()
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

r1=3;
r2=2;
r3=2;

% M1 = xlsread('Test1Data.xlsx');
% time1=M1(:,1);
% microtime1=time1*10^-6;
% Source=M1(:,6);
% Record=M1(:,7);
% l=length(M1)-1;
% figure
% subplot(211)
% plot(microtime1,Source)
% % ylim([-5 5])
% subplot(212)
% plot(microtime1,Record)
% % ylim([-5 5])
% 
% [cc,lags]=xcorr(Source,Record);
% [max,I] = max(abs(cc));
% p=lags(I);
% figure
% plot(lags,cc)
% xlabel('lag')
% ylabel('Correlation measure')
% legend(sprintf('Maximum at lag %d',lags(I)))
% 
% totaltimenanoseconds=abs(M1(2,1)-M1(end,1));
% totaltimesecs=totaltimenanoseconds*10^-9
% timeconvert=totaltimesecs/l;
% timediff=timeconvert*abs(p);
% 
% distance=1482*timediff
end

