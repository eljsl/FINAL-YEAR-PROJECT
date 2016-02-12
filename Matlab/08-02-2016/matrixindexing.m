clear all
A = [1 2; 1 2; 5 2; 1 2; 6 6; 5 2; 9 8];
y=A(:,2);
x=A(:,[1 2]);
[ux,i,j]=unique(x,'rows')
count = hist(j,unique(j));

B=[1 1 1 1 1 3 1 1 1];
[M,I]=max(B)