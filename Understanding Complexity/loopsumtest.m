a=2;
b=3;
for n=1:5,
    x=(a+b)*n
    xl(n,:)=x
end
txl=sum(xl)