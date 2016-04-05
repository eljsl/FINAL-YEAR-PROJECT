coords=[4.1000    2.0000
    4.4000    2.4000
    NaN       NaN
    4.0975    2.1025
    NaN       NaN
    5.8972    3.8972];
x=coords(:,1);
y=coords(:,2);
w=length(coords);
A=sortrows(coords)
Ztotalx=zeros(w,1);
Ztotaly=zeros(w,1);
ZtotalAllx=zeros(w,w);
ZtotalAlly=zeros(w,w);

for i=1:w,
    
    for n=1:w;
        Zx=A(n,1)-A(i,1);
        Ztotalx(n,:)=Zx;
    end
   ZtotalAllx(:,i)=Ztotalx;
end

for p=1:w,
    
    for q=1:w;
        Zy=A(q,2)-A(p,2);
        Ztotaly(q,:)=Zy;
    end
   ZtotalAlly(:,p)=Ztotaly;
end

ZtotalAllx(isnan(ZtotalAllx))=0;
ZtotalAlly(isnan(ZtotalAlly))=0;

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
xlim([2 6])
ylim([0 5])

