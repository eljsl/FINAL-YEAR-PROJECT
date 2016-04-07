coords=[4.1000    2.0000
    4.1000    2.0000
    2.1025    4.0975
    4.0975    2.1025
    4.1028    2.1028
    5.8972    3.8972];
x=coords(:,1);
y=coords(:,2);
A=sortrows(coords)
Ztotalx=zeros(6,1);
Ztotaly=zeros(6,1);
ZtotalAllx=zeros(6,6);
ZtotalAlly=zeros(6,6);

for i=1:6,
    
    for n=1:6;
        Zx=A(n,1)-A(i,1);
        Ztotalx(n,:)=Zx;
    end
   ZtotalAllx(:,i)=Ztotalx;
end

for p=1:6,
    
    for q=1:6;
        Zy=A(q,2)-A(p,2);
        Ztotaly(q,:)=Zy;
    end
   ZtotalAlly(:,p)=Ztotaly;
end



squarex=ZtotalAllx.^2;
squarey=ZtotalAlly.^2;
addsquare=squarex+squarey;
dist=sqrt(addsquare);

dist(dist>1)=0;
dist

[row,col]=find(dist); %each number is a coordinate from A. The pairs of numbers indicate the coordinates that are close to each other
loc=[row col];
c=sort(loc,2);   %sorts the rows so smallest coordinate on the left
d=sortrows(c);   %sorts the rows in order top to bottom
e=unique(d)
l=length(e);

%x coordinates
for v=1:l
    xval=A(e(v),1);
    xvals(v,:)=xval;
end
%y coordinates
for w=1:l
    yval=A(e(w),2);
    yvals(w,:)=yval;
end

avgx=mean(xvals)
avgy=mean(yvals)
    


scatter(x,y,'b')
hold on
scatter(avgx,avgy,'r','filled')

