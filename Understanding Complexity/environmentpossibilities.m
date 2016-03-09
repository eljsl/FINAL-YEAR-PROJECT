sets = {[0 1 2], [0 1 2], [0 1 2], [0 1 2], [0 1 2]};
[a b x y z] = ndgrid(sets{:});
cartProd = [a(:) b(:) x(:) y(:) z(:)]
size(cartProd,1)