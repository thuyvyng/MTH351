%Thuy-Vy Nguyen
%Numerical Analysis
%HW 7

%I left everything so that it graphs on the same graph, commenting out the
%plots should make it easier to see what is needed (everything is labeled)

%Question 2 (Uses Lagrange function which is in different file :)
lower = -1;
upper = 1;

n = 11;

syms t;

%Pick a function to plot! -Part E
f = @(t) 1/(1+10*t*t);
%f = @(t) cos(t);

%creates points
e_space = lower: ((upper-lower)/(n-1)): upper;
u_space = lower: ((upper-lower)/(n-1)): upper;
z = zeros(n,1);

for k = 1:n
    u_space(k) = cos((2*k-1)*pi/(2*n));
end

%Question 2A - plots even vs uneven
%plot(e_space,z, 'bo', u_space, z, 'g*')
%hold on

%Question 2B
f_poly = e_space;
for i = 1:n
    f_poly(i) = f(e_space(i));
end

Poly = lagrange(e_space, f_poly)

fplot(f,[-1,1])
hold on
fplot(Poly, [-1,1])
hold on


%Question 2C
u_poly = u_space;
for i = 1:n
    u_poly(i) = f(u_space(i));
end

U_Poly = lagrange(u_space, u_poly)

fplot(f,[-1,1])
hold on
fplot(U_Poly, [-1,1])

%Question 3--------------------------------------------------------------------------------------------
lower = -1;
upper = 1;
n = 11;
%function
f =@(t) 1/(1+10*t^2);

% Generate points
x = lower : (upper-lower)/(n-1) : upper
y = x;
for i = 1:n
    y(i) = f(x(i));
end

M = zeros(1, n);
%Question 3C - calculates each M
for i = 2:n
    xj = x(i-1);
    xjj = x(i);
    yj = y(i-1);
    yjj = y(i);
    M(i) = ( (yjj-yj)*(2*xj-2*xjj) - M(i-1)*(xjj*xjj-xj*xj)+(2*xjj*M(i-1))*(xjj-xj)) /(-1*xjj*xjj +xj*xj + 2*xj*xjj- 2*xj*xj)
end

functions = zeros(1,n-1);

%Question 3D - graphs curve
for i = 1:(n-1)
    Mj = M(i);
    Mjj = M(i+1);
    xj = x(i);
    xjj = x(i+1);
    yj = y(i);
    func = @(t) ((Mj-Mjj)/(2*xj-2*xjj))*(t^2-xj^2) + ((2*xj*Mjj - 2*xjj*Mj)/(2*xj-2*xjj))*(t-xj) + yj;
    %graphs function
    fplot(func, [xj xjj])
    hold on;
end
