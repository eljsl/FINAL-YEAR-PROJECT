xypos=[1 2;1 8;NaN NaN;NaN NaN;NaN NaN;NaN NaN]


s=sum(~isnan(xypos),1)

if s(1)>2,
    z=10000;
else
    

[row, col] = find(~isnan(xypos));
ur=unique(row)
uc=unique(col)
    
mx=[xypos(1,1) xypos(2,1)]    
my=[xypos(2,1) xypos(2,2)]

scatter(mx,my)
    
end