
% Machine Problem 2 (Matlab Solution)
% By Group 1 of 2ECE-A
% Michael Jeffrey Carlos and Lei-Ann Edang

%{ 
[] function accepts three input points (x,y) lying on a circle in a 
2-dimensional Cartesian Plane. From this set of points, it will return 
the values of the center (h,k) and radius (r) of the circle as well as
the coefficients of the general equation of the circle in the form of 
vector ([D E F]).
%}

% Func_X - x(n)
% Func_Y - y(n)
% n - integer (0 to 199)

function [] = Circle(x1, x2, x3, y1, y2, y3)

% Standard Equations of the Circle
a = x1^2 + y1^2;
b = x2^2 + y2^2;
c = x3^2 + y3^2;

% Specifications of the Vector [D E F]

Arr_of_A = [x1, y1, 1; x2, y2, 1; x3, y3, 1];
det_A = (det(Arr_of_A));

Arr_of_D = - [a, y1, 1; b, y2, 1; c, y3, 1];
det_D = (det(Arr_of_D));
D = det_D / det_A;

Arr_of_E = [a, x1, 1; b, x2, 1; c, x3, 1];
det_E = (det(Arr_of_E));
E = det_E / det_A;

Arr_of_F = - [a, x1, y1; b, x2, y2; c, x3, y3];
det_F = (det(Arr_of_F));
F = det_F / det_A;

vector = [D, E, F];

% Calculating the Center of the Circle
h = - (det_D / (2 * det(Arr_of_A)));
k = - (det_E / (2 * det(Arr_of_A)));
center = [h, k];

% Calculating the Radius of the Circle
radius = sqrt((h - x1)^2 + (k - y1)^2);

% Displaying the obtained Center, Radius, and Vector of the Circle

format short 

disp('Center: ')
disp(center)

disp('Radius: ')
disp(radius)

disp('Vector: ')
disp(vector)

end