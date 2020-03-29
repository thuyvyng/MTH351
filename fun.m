%ThuyVy Nguyen
%MTH 351 HW6
%Question 4

%function fun gets a function f and X (array)
function return_f = fun(f, X)
lengthX = length(X);

%base case
if lengthX == 1
    return_f = f(X(1));
    
else
     no_x1 = X;
     no_x1(1) = []; %pops off front
     no_xn = X;
     no_xn(lengthX) = []; %pops off back
     return_f = (fun(f, no_x1) - fun(f, no_xn))/(X(lengthX)-X(1));
end