coords=[2.1 6.6;2.5 5.9;8.8 1.4;6.1 4.5;6.3 9.6;7.4 4.8;5.2 2.1;2.1 5.5;6.8 9.9];
x=coords(:,1);
y=coords(:,2);
A=sortrows(coords)
Ztotalx=zeros(9,1);
Ztotaly=zeros(9,1);
ZtotalAllx=zeros(9,9);
ZtotalAlly=zeros(9,9);

for i=1:9,
    
    for n=1:9;
        Zx=A(n,1)-A(i,1);
        Ztotalx(n,:)=Zx;
    end
   ZtotalAllx(:,i)=Ztotalx;
end

for p=1:9,
    
    for q=1:9;
        Zy=A(q,2)-A(p,2);
        Ztotaly(q,:)=Zy;
    end
   ZtotalAlly(:,p)=Ztotaly;
end


%This squares the distance that has already been calculated (x1-x2)^2.
%ZtotalAllx is x1-x2 for between all x coordinates
squarex=ZtotalAllx.^2;
squarey=ZtotalAlly.^2;
addsquare=squarex+squarey;
dist=sqrt(addsquare);

dist(dist>1)=0;
dist

scatter(x,y)
hold on
mx=mean(A(1:3,1))
my=mean(A(1:3,2))
scatter(mx,my)


% [ux,i,j]=unique(A,'rows');
% 
% Pos1=1;
% Pos2=2;
% a=1;
% z=zeros(6,1);
% 
% % for a=1:6,
% %     if x(n+1)<=x(a)*1.1
% %         z(a)=
% 
% f= [1990 1998 2001 2004];
% val = 2000; %value to find
% tmp = abs(f-val);
% [idx idx] = min(tmp); %index of closest value
% closest = f(idx); %closest value
% %%%%%%%%%%%%%%%%%%%

