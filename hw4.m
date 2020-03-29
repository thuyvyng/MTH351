syms x

%Question 3A: Plotting the function and adding an x axis w/ title 
fplot(x^3 -3*x^2 +1,[-1,3]); hold on
fplot(x*0,[-1,3])

title('X^3 -3x^2 +1');

%Question 4

%insert changes to variables here
n = 5;                   % steps
x = 1;
y = -1;   

% I used (-1,-1) for x,y < 0
% I used (1,1) for x,y > 0

n_point = [x; y];

for c = 1:n
    determinant = (1/( (4*x*y - x - 2*y^2 + y -1)));
    inverse_matrix = [(2*y-1), (-1+x); -1, (2*x - y)];
    f_matrix = [(x^2 + y - x*y); (y^2 + x - y -1)];
    n_point = n_point - determinant*inverse_matrix*f_matrix;
    x = n_point(1);
    y = n_point(2);
end

n_point