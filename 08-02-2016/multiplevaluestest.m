clear all
X= [1 2 3 4 5 5 5 1 3 1 2 6 2 2];
uniqueX = unique(X);
countofX = hist(X,uniqueX);
indextorepeatedvalue = (countofX~=1);

repeatedvalues = uniqueX(indextorepeatedvalue)
numberofappearencesofrepeatedvalues = countofX(indextorepeatedvalue)