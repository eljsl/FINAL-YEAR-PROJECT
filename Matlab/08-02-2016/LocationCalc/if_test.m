a=5;
b=30;
if a>b
    x=a*b;
else
    x=a+b;
end
x


A = [1 2 3 4 5 NaN
    4 2 6 5 8 NaN
    1 4 8 9 6 NaN
    1 4 9 7 5 NaN
    1 4 7 8 7 NaN
    NaN NaN NaN NaN NaN NaN]

A(isnan(A))=0

B=any(A)

