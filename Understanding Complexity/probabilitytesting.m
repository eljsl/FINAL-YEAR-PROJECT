%Env = sum(rand >= cumsum([0, 0.5, 0.1, 0.4]));

r = rand(12); % # Any size you want
Env = arrayfun(@(z)sum(z >= cumsum([0.3, 0.7])), r);
Env