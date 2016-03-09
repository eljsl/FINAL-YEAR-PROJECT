nrows = 4;
ncols = 6;
A = randi([0 1],nrows,ncols)

G=randi([1 6],6,1)

for c = 1:ncols
    for r = 1:nrows

        if A(r,c) == 1
            B(r,c) = 2;
        elseif abs(r-c) == 1
            A(r,c) = -1;
        else
            A(r,c) = 0;
        end

    end
end
A