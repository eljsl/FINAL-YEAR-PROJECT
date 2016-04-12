

for n=1:5,
    
G=randi([1 6],5,1);

Score=sum(Gnew);

    
rand('state',sum(clock))
n=floor(5*rand)+1;
change=floor(6*rand)+1;
Gnew=G;
Gnew(n)=change;

AllScore(:,n)=Score;

end