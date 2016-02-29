x=[1.1
    2.5
    1.13
    6
    5.9
    2.1
    1.01
    5
    1.25
    9.2]

%for n=2:10
%    x(n)=2*(x+1);
%end

for i=1:10
if x(i)>3
    z=x(i)*40
else z=x(i)+3
end
end

a = 10;
k = 0.5;
n = 2;
valueofX = zeros(10,1);
for m = 2:10
    if x(m)>x(m-1)
        a = x(m)*100
    else a = x(m)+20
    end
    xnew=x(1)
    valueofX(m) = xnew(end+a);
end