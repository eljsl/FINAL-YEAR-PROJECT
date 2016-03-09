% function s = score(G)
% 
% if
% 
% 
% end



A=randi([0 2],5,5);
G=randi([1 6],5,1);
A(5,:)=2;
A(1,:)=2;
A(:,1)=2;
A(:,5)=2;

for c = 1:5
    for r = 1:5
        if A(r,c)