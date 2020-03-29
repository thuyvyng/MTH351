%ThuyVy Nguyen
%MTH 351 - Numerical Analysis
%Homework 8 - Due 3/13/2020

%change n here
n = 64
b = 1;
a = 0;
h = (b-a)/n;
x_points = a: (b-a)/n: b;
y_points = x_points;

%creates function
syms t;
f = @(t) 1/(1+4*t*t);

for i = 1:(n+1)
    y_points(i) = f(x_points(i));
end


%Left Sum-----------------------------------------------------------------
left_sum = 0;
for k = 1:n
    %left_sum = f(k-1) + left_sum;
    left_sum = f(x_points(k)) + left_sum;
end

left_sum = h * left_sum

%Right Sum----------------------------------------------------------------
right_sum = 0;
for k = 1:n
    right_sum = f(x_points(k+1)) + right_sum;
end

right_sum = h * right_sum

%Middle Sum----------------------------------------------------------------
middle_sum = 0;
for k = 1:n
    %middle_sum = f((k+k-1)/2) + middle_sum;
    middle_sum = f((x_points(k)+ x_points(k+1))/2) + middle_sum;
end

middle_sum = h * middle_sum

%Trapezoid Sum-------------------------------------------------------------
t_sum = 0;
for k = 2:n
    %t_sum = f(k) + t_sum;
    t_sum = f(x_points(k)) + t_sum;
end

t_sum = h*(1/2)* (2*t_sum + f(x_points(1)) + f(x_points(n+1)))



