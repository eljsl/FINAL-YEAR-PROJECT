p=[5
    10
    15
    20
    25
    30];
q=[6
    13
    16
    22.5
    27.5
    29];
r=unique([p;q])
R=uniquetol([p:q],0.01)




x = (1:6)'*pi;
y = 10.^log10(x);
x-y;
c=unique([x;y]);
C=uniquetol([x;y],3);