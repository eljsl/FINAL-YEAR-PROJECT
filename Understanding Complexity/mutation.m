allb=zeros(10,1);
allanew=zeros(3,10);
a=[2 2 2 2 2 2 2 2 2 2];



for z=1:50,
    

%     for i=1:10,
% 
%         b=sum(a);
%         allb(i,:)=b;
% 
%     end

allanew(z,:)=a;
Score=sum(a);
AllScore(:,z)=Score;
plot(AllScore)

  newval=floor(3*rand)+1;
    n=floor(10*rand)+1;

a(n)= newval; 

end