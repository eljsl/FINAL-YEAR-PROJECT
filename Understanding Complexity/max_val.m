function mv = max_val(A)
mv=A(1);
for n = 1:length(A),
if A(n)>mv,
mv=A(n);
end;
end;
end

