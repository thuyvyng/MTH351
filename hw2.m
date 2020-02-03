% thuyvy nguyen
% mth 351 (winter 2020)
% hw 2
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
    diff = abs(exact - f_approx);
   % [e,t] = max(diff);
    
    %{ 
    PRETTY
    plot(range,f_approx); hold on;
    plot(range, exact);
    ylim([-1.1 1.1])
    hold off
    %}
end
 
%% Plotting

%subplot(1,3,[1 2])
plot(range,f_approx); hold on
plot(range, exact)
xlim([2 4])
title('Exact vs Approximation');
legend('approx','exact')

%subplot(1,3,3)
%plot(range(9000:10000),f_approx(9000:10000)); hold on;
%plot(range(9000:10000),exact(9000:10000));
%xlim([3.9 4])
%title('Zoomed In: Region of Greatest Error');
%legend('approx','exact')
