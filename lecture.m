%ThuyVy Nguyen
%MTH 351 - Numerical Analysis
%Winter 2020


%Question 3A
% find the interpolating polynomial using Lagrange formula

x = -.6:.02: .6;
y = sin(x);
syms t
n = length(x);
% contructing Lagrange polynomials L1, L2,..., Ln
L = zeros(1,n,'sym');
for i = 1:n
    L(i) = 1;
    z = x;
    z(i) = [];     % z is an array obtained from array x by obmitting the i'th entry
    for j = 1:n-1
        L(i) = L(i)*(t - z(j))/(x(i)-z(j));
    end
end
% construct P = y1*L1 + y2*L2 + ... + yn*Ln
P = L*transpose(y);
simplify(P)
ezplot(P,[-.6, .6])
hold on
plot(x,y,'o')