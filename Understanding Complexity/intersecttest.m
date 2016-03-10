A=[1 5;
    2 5;
    6 9;
    2 8;
    7 4]
B=[1 2;
    3 2;
    6 7;
    6 9;
    1 1]
G=[5; 5; 6; 1; 3; 2]

[C,ia,ib]=intersect(A,B,'rows')

Move=G(ib,:)