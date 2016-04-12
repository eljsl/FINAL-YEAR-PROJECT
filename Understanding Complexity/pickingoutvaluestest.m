A=randi([1 6],4,4)

y = datasample(A,2,2);

z=randi([1 4],2,1)
p=randi([1 6],1,1)

A(z,:)=p