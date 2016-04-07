coords=[2.1 6.6;2.5 5.9;8.8 1.4;6.1 4.5;6.3 9.6;7.4 4.8;5.2 2.1;2.1 5.5;6.8 9.9];
x=coords(:,1);
y=coords(:,2);
A=sortrows(coords)


for n=1:8;
    if A(n+1)<=A(n)*1.2 && A(n+1)>=A(n)*0.8   
        Z=100;
    else
        Z=2;
    end
    Zscore(n,:)=Z;
end

[ux,i,j]=unique(A,'rows');

Pos1=1;
Pos2=2;
a=1;
z=zeros(6,1);

% for a=1:6,
%     if x(n+1)<=x(a)*1.1
%         z(a)=

f= [1990 1998 2001 2004];
val = 2000; %value to find
tmp = abs(f-val);
[idx idx] = min(tmp); %index of closest value
closest = f(idx); %closest value
%%%%%%%%%%%%%%%%%%%


a=[1,2,3;
1,3,5;
2,5,7];
b=[1,2,6;
1,4,8;
2,5,8];
c=[1,4,7;
1,5,3;
2,5,9];
[ab,ia,ib] = intersect(a(:,1:2),b(:,1:2),'rows')
[abc,iab,ic] = intersect(ab(:,1:2),c(:,1:2),'rows')
a_row_idx = ia(iab)
b_row_idx = ib(iab)
c_row_idx = ic