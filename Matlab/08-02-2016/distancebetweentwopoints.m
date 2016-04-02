x=[0,0;9,24;5,5]
d=pdist(x,'euclidean')


coords=[2.1 6.6;2.5 5.9;8.8 1.4;6.1 4.5;6.3 9.6;7.4 4.8;5.2 2.1;2.1 5.5;6.8 9.9];
distance=pdist(coords,'euclidean');

distance(distance>2)=0;
distance