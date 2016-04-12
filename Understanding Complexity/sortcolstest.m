A=[1 5 6 9 8;
    6 8 9 4 7;
    2 3 6 5 8;
    4 7 8 5 3]
[Y,I]=sort(A(4,:))
B=A(:,I) %use the column indices from sort() to sort all columns of A.
