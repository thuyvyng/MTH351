%ThuyVy Nguyen
%Numerical Analysis Hw 7
%Question 3

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
%finds each M
for i = 2:n
    xj = x(i-1);
    xjj = x(i);
    yj = y(i-1);
    yjj = y(i);
    %M(i) = (M(i-1)*(xjj^2 - 3*xj^2 + 2*xj*xjj) + ((yj-yjj)*(2*xj-2*xjj)))/(-1*xjj^2 + xj^2 + 2*xjj*xj);
    %M(i) = ( (yjj-yj)*(2*xj-2*xjj) - M(i-1)*(xjj*xjj-xj*xj)+(2*xjj*M(i-1))*(xjj-xj)) /(xjj*xjj -xj*xj + 2*xj*(xjj-xj))
    M(i) = ( (yjj-yj)*(2*xj-2*xjj) - M(i-1)*(xjj*xjj-xj*xj)+(2*xjj*M(i-1))*(xjj-xj)) /(-1*xjj*xjj +xj*xj + 2*xj*xjj- 2*xj*xj)
end

functions = zeros(1,n-1);

%graph
for i = 1:(n-1)
    Mj = M(i);
    Mjj = M(i+1);
    xj = x(i);
    xjj = x(i+1);
    yj = y(i);
    func = @(t) ((Mj-Mjj)/(2*xj-2*xjj))*(t^2-xj^2) + ((2*xj*Mjj - 2*xjj*Mj)/(2*xj-2*xjj))*(t-xj) + yj;
    fplot(func, [xj xjj])
    hold on;
end