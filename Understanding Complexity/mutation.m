allb=zeros(10,1);
allanew=zeros(3,10);
a=[3 3 3 3 3 3 2 1 1 1];

for i=1:100,
    

for z=1:50,
    
    newval=floor(3*rand)+1;
    n=floor(10*rand)+1;

a(n)= newval;

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

end