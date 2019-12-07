
% Machine Problem 5 (Matlab Solution)
% By Group 1 of 2ECE-A
% Michael Jeffrey Carlos and Lei-Ann Edang

%{ 
Func_X functions accepts a function of x(n) to determine the value of 
Func_Y or y(n) depending on which piecewise function it satisfies. It will
also return the superimposed graphs of both functions.
%}

% Func_X - x(n)
% Func_Y - y(n)
% n - integer (0 to 199)

n = 0:1:199;
Func_X = input('Enter x(n): ');

for n = 0:1:199;
    
    k = 1; % index
    
    if n == 0 % piecewise 1
        n = n + k;
        Func_Y(n) = -1.5.*Func_X(n) + 2.*Func_X(n + 1) - 0.5.*Func_X(n + 2);
        
    elseif (n > 0 && n < 199) % piecewise 2
        n = n + k;
        Func_Y(n) = 0.5.*Func_X(n + 1) - 0.5.*Func_X(n - 1);
        
    else % piecewise 3
        n = n + k;
        Func_Y(n) = 1.5.*Func_X(n) - 2.*Func_X(n - 1) + 0.5.*Func_X(n - 2);        
    
    end
    
end

figure

% graph of x(n)
plot(Func_X, '--m', 'linewidth', 1.5);
hold on

% graph of y(n)
plot(Func_Y, '--c', 'linewidth', 1.5);
hold on

% labels of graphs
legend('x(n)', 'y(n)')
title('Graphs of x(n) and y(n)')

grid on