% a=rand;
% n=1;
% z=10;
% 
% while z==10,
%     n=n+1;
%     a=rand*10;
%     Alln(:,n)=n;
%     Alla(:,n)=a;
% end

clear Allb

for n=1:5
    b=randi([-5 5],80,1);
    Allb(:,n)=b;
    
    figure(1)
    plot(Allb(:,n))    
    hold on
end