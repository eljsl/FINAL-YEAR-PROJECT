Allx=NaN(1,10000);
x=5;


for n=1:10,
    
    x=randi([1 10],1,10);
    
    
    filename = 'test.xlsx';
    xlswrite(filename,x);
    
    
    X1=xlsread('test.xlsx');
    B=X1(1,1:10);
    
     
    
    
    plot(B)
    
    drawnow
    
end
    