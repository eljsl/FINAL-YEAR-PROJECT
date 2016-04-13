Allz=NaN(1,100);
AllQ=NaN(1,200);
x=randi([1 6],1,200);
Env = randi([0 1],12,12);

for i=1:200
    
    
    for n=1:100
        
        randval1=randi([1 12],1,1);
        randval2=randi([1 12],1,1);
        z=x(i)+Env(randval1,randval2);
        Allz(:,n)=z;
        
    end
    
    Q=sum(Allz);
    AllQ(:,i)=Q;
end

% plot(AllQ)