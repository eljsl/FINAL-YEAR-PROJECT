function [ avgx,avgy ] = our_functionrealtime( xypos,x3,y3 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x3;
y3;

%Error avoiding
a=sum(~isnan(xypos),1);
if a(1)>2,
    
    
coords=xypos;
x=coords(:,1);
y=coords(:,2);
w=length(coords);
A=sortrows(coords);
Ztotalx=zeros(w,1);
Ztotaly=zeros(w,1);
ZtotalAllx=zeros(w,w);
ZtotalAlly=zeros(w,w);
xvals=0;
yvals=0;

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

dist(dist>0.7)=0;

[row,col]=find(dist); %each number is a coordinate from A. The pairs of numbers indicate the coordinates that are close to each other
loc=[row col];
c=sort(loc,2);   %sorts the rows so smallest coordinate on the left
d=sortrows(c);   %sorts the rows in order top to bottom
e=unique(d);
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

avgx=mean(xvals);
avgy=mean(yvals);
    
% scatter(x,y,'b')
% hold on
% scatter(avgx,avgy,'r','filled')

else
% elseif
%     poss=[xypos(1,1) xypos(2,1)] ;   
%     poss=[xypos(1,2) xypos(2,2)];
%     
%     
    
    

[row, col] = find(~isnan(xypos));
ur=unique(row);
uc=unique(col);

dist1=sqrt(((xypos(1,1)-x3)^2)+((xypos(1,2)-y3)^2));
dist2=sqrt(((xypos(2,1)-x3)^2)+((xypos(2,2)-y3)^2));

if dist1<dist2,    
        avgx=xypos(1,1);
        avgy=xypos(1,2);
else
        avgx=xypos(2,1);   
        avgy=xypos(2,2);
end

end