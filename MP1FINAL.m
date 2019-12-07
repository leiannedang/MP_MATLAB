
% Machine Problem 1 (Matlab Solution)
% By Group 1 of 2ECE-A
% Michael Jeffrey Carlos and Lei-Ann Edang

function_of_N = zeros(1, 100);

%{ 
function_of_N Function implements given piecewise functions where 
n is an integer greater than or equal to zero. In the same way, after
computing for the specific values of the function, this program graphs
f(n) from n = 0 and n = 99 using the stem command.
%}

% n - integer
% f = function

n = 0:99;
f = zeros(1, 100);

% j - increment

for j = 0:99
    val_x = j;
    
    while (val_x >= 10)
        val_x = val_x - 10; % piecewise 1
    end
    
    ans = ((val_x^2) - 7); % piecewise 2
    f(j+1) = ans;
    
end

figure
stem(n, f, 'g', 'linewidth', 1.5) % stem plot

% labels
title('Graph of f(n) using Stem')
xlabel('n')
ylabel('f(n)')
grid on







