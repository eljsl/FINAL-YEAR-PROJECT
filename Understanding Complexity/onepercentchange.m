G=randi([1 6],243,200);
siz=numel(G)
OnePerc=siz*0.01

for n=1:OnePerc,
    
    row=ceil(rand*243);
    col=ceil(rand*200);
    
    G(row,col)=randi([1 6],1,1);
    
end