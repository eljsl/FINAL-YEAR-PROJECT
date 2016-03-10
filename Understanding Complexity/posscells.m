function Poss=posscells(A)

sets = {[0 1 2], [0 1 2], [0 1 2], [0 1 2], [0 1 2]};
[a b x y z] = ndgrid(sets{:});
Poss = [a(:) b(:) x(:) y(:) z(:)]
size(Poss,1)