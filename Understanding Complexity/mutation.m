allb=zeros(10,1);
allanew=zeros(3,10);

for z=1:3,

a=randi([1 3],10,1);
anew=a;
anew(floor(10*rand)+1)= floor(3*rand)+1;


for i=1:10,
    
    b=sum(anew);
    allb(i,:)=b;
    
end

allanew(z,:)=anew;

end