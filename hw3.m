% thuyvy nguyen
% mth 351 (winter 2020)
% hw 3
clear all; clc

%% Variables and solving

%Exact Function
f_exact = @(x) cos(x.^2);

%Stuffs
k = -1;
e = 1;
range = linspace(2,4,100000);
exact = f_exact(range);
f_approx = 0;

while k < 24
    k = k + 1;
    P = @(x) ((-1)^k .* ((x.^2).^(2*k)))./factorial(2*k);
    f_approx = f_approx + P(range);
end
 
%% Plotting

plot(range,f_approx); hold on
plot(range, exact)
xlim([2 4])
title('Exact vs Approximation');
legend('approx','exact')

% For Questions 3 & 4"
% s = 0
% x = 0
% while x < 1.0
%   s = s + x
% x = x + 0.1
% end
% S = s
% 
% clear all
% 
% s = 0
% x = 0
% while x~=10
%   s = s + x
%   x = x + 1
% end
% S = s



