
% Machine Problem 4 (Matlab Solution)
% By Group 1 of 2ECE-A
% Michael Jeffrey Carlos and Lei-Ann Edang

%{ 
This program accepts values for the constant-velocity motion in the 
horizontal direction and free-fall motion in the vertical direction such 
as the initial height, magnitude of the velocity, angle in degrees, as 
well as the x and y components of the acceleration. Afterwards, it will 
return the plot for its trajectory or its projectile motion.
%}

% Calculating the Specific Parameters of the Projectile
h = input('Enter value of Initial Height: ');
v = input('Enter value of Initial Velocity: ');
theta = input('Enter value of Angle in Degrees: ');

x = input('Enter value of Acceleration (x-component): ');
y = input('Enter value of Acceleration (y-component): ');

% Returns 'Error' function when there is no acceleration in the y-axis
if y == 0
    
    disp('Error! No Free Fall.')
    return
    
end

% Computing the value of Velocity
V_xcomp = v * cosd(theta);
V_ycomp = v * sind(theta);

T = max(roots([(y/2),V_ycomp,h])); %time
Dis = 0:0.01:T; %displacement

x2 = zeros(1, length(Dis) + 1);
y2 = zeros(1, length(Dis) + 1);

T = 0;
y2(1) = h;

% Calculating the values for the Projectile Motion
for i = 1:length(Dis)
    
    xt = (x * (T^2))/2 + V_xcomp *T;
    yt = (y * (T^2))/2 + V_ycomp *T + h;
    
    x2(i+1) = xt;
    y2(i+1) = yt;
   
    T = T+ 0.01;
    
end

% Plotting the Graph of the Projectile Motion
plot(x2,y2, '--y', 'linewidth', 2.5)

% Setting the Limits of the Projectile Motion
ylim([0, max(y2)+1])


% Customizing the Graph
title('Projectile Motion')
xlabel('Displacement in the X-Axis')
ylabel('Displacement in the Y-Axis')
