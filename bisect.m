function [y] = bisect(a,b,tol,n)
Fa = func(a);
for i = 0:n
p = a +(b-a)/2;
Fp = func(p);
if (Fp ==0 || (b-a)/2 < tol)
y = p
break
end
if (Fp*Fa >0)
a = p;
Fa = Fp;
else
b =p;
end
end
y = p

end
