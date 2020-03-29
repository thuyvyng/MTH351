%Thuy-Vy Nguyen - Lagrange Function!
function P = lagrange(x,y)
syms t
n = length(x);
L = zeros(1, n, 'sym');
for i = 1:n
    L(i) = 1;
    z = x;
    z(i) = [];
    for j = 1:n-1
        L(i)= L(i)*(t-z(j))/(x(i)-z(j));
    end
end
P = L*transpose(y);
simplify(P)
end