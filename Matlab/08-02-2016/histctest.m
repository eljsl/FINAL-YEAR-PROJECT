x=[1.1
    2.5
    1.13
    6
    5.9
    2.1
    1.01
    5
    1.25
    9.2]


% bar(hist(x,50))

A = rand(10,1)
[c,idx] = histc(A,0:.1:1)

% [counts, bins] = histc(A, 1.5:1:11.5);
% [(1.5:1:11.5).' counts]
% [A bins]

[y, z] = hist(x(:), unique(x));
stem(z, y);