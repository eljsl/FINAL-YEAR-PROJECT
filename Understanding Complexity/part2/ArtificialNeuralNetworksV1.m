load('test.mat');
load('train.mat');
A1=Atest(1,:);

for k=1:8,
     A2(k,1:8)=A1(8*(k-1)+1:8*(k-1)+8);
end
imagesc(A2);colormap(gray)