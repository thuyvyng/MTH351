%ThuyVy Nguyen
%MTH 351 - HW 6
%Question 3B
x = -.6:.02: .6;
y = x;
syms t
n = length(x);
for i = 1:n
    y(i)= 1 /(1+x(i));
end
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
figure(2)
ezplot(P,[-.6, .6])
hold on
plot(x,y,'o')