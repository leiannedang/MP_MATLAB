
% Machine Problem 3 (Matlab Solution)
% By Group 1 of 2ECE-A
% Michael Jeffrey Carlos and Lei-Ann Edang

%{ 
This program accepts experimental points (x,y) from 1st to 10th degree
and returns the coefficients of the polynomial f(x) that best 
approximates the data based on its least norm of error vector e(x). It
should be noted that the points are in the form of an nx2 matrix.
%}

format long e;

% Setting the Experimental Points
ExpPoints = input('Enter Experimental Points [xi,yi] \n');
xi = ExpPoints(1,:);
yi = ExpPoints(2,:);

% Computing the Line of Best Fit

% P - Polynomial Regression Analysis
% F - Polynomial Function
% E - Error
% N - Norm of Error

% Degree 1
P1 = polyfit(xi, yi, 1);
F1 = polyval(P1, xi);
E1 = yi - F1;
N1 = norm(E1);

% Degree 2
P2 = polyfit(xi, yi, 2);
F2 = polyval(P2, xi);
E2 = yi - F2;
N2 = norm(E2);

% Degree 3
P3 = polyfit(xi, yi, 3);
F3 = polyval(P3, xi);
E3 = yi - F3;
N3 = norm(E3);

% Degree 4
P4 = polyfit(xi, yi, 4);
F4 = polyval(P4, xi);
E4 = yi - F4;
N4 = norm(E4);

% Degree 5
P5 = polyfit(xi, yi, 5);
F5 = polyval(P5, xi);
E5 = yi - F5;
N5 = norm(E5);

% Degree 6
P6 = polyfit(xi, yi, 6);
F6 = polyval(P6, xi);
E6 = yi - F6;
N6 = norm(E6);

% Degree 7
P7 = polyfit(xi, yi, 7);
F7 = polyval(P7, xi);
E7 = yi - F7;
N7 = norm(E7);

% Degree 8
P8 = polyfit(xi, yi, 8);
F8 = polyval(P8, xi);
E8 = yi - F8;
N8 = norm(E8);

% Degree 9
P9 = polyfit(xi, yi, 9);
F9 = polyval(P9, xi);
E9 = yi - F9;
N9 = norm(E9);

% Degree 10
P10 = polyfit(xi, yi, 10);
F10 = polyval(P10, xi);
E10 = yi - F10;
N10 = norm(E10);

% Conditions for the Least Norm of Error Vector
LNEVector = [N1, N2, N3, N4, N5, N6, N7, N8, N9, N10];
LeastNorm = sort(min(LNEVector));

format short e;

% Displaying the Coefficients of the Polynomial f(x)

if LeastNorm == N1
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P1)
    
elseif LeastNorm == N2
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P2)
    
elseif LeastNorm == N3
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P3)

elseif LeastNorm == N4
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P4)
   
elseif LeastNorm == N5
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P5)

elseif LeastNorm == N6
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P6)
    
elseif LeastNorm == N7
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P7)

elseif LeastNorm == N8
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P8)
 
elseif LeastNorm == N9
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P9)

else 
    fprintf('The Coefficients of the Polynomial Function are: ');
    disp(P10)
    
end



