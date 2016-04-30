function [ avgx,avgy ] = locationcalculatorTest1( xypos,x3,y3 )

%If statement to manage errors
a=sum(~isnan(xypos),1);
if a(1)>2, %If there are more than 2 intersection points on the map, then perform the following
    
%Define the array of intersection points and preallocate new arrays    
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

for i=1:w,  %Calculate the distance between each of the x coordinates
    
    for n=1:w;
        Zx=A(n,1)-A(i,1);
        Ztotalx(n,:)=Zx;
    end
   ZtotalAllx(:,i)=Ztotalx;
end

for p=1:w,  %Calculate the distance between each of the y coordinates
    
    for q=1:w;
        Zy=A(q,2)-A(p,2);
        Ztotaly(q,:)=Zy;
    end
   ZtotalAlly(:,p)=Ztotaly;
end

%Remove NaN values where there may not have been an intersection between
%circles
ZtotalAllx(isnan(ZtotalAllx))=0;
ZtotalAlly(isnan(ZtotalAlly))=0;

%Find distances between all intersection points
squarex=ZtotalAllx.^2;
squarey=ZtotalAlly.^2;
addsquare=squarex+squarey;
dist=sqrt(addsquare);

dist(dist>0.3)=0;   %Removes all distances that are above 0.3 metres. Points within 0.3 metres of each other are assumed to be the same point

[row,col]=find(dist); %Define the intersection points that are assumed to be close
loc=[row col];  
c=sort(loc,2);   %Sorts the rows so smallest coordinate on the left
d=sortrows(c);   %sorts the rows in order top to bottom
e=unique(d);
l=length(e);

%Combine the nearby x coordinates
for v=1:l
    xval=A(e(v),1);
    xvals(v,:)=xval;
end
%Combine the nearby y coordinates
for w=1:l
    yval=A(e(w),2);
    yvals(w,:)=yval;
end

%Find the mean coordinates as the estimate of the source location
avgx=mean(xvals);
avgy=mean(yvals);

else    %If there are 2 or less intersection points, then perform the following to choose the one closest to the other hydrophones
    
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

