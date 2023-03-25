dydt = @(x,y,a,b) a*x - b*y;

% Set the parameters a and b
a = 1;
b = 2;

% Set the initial condition
y0 = 1;

% Set the time interval
tspan = [0, max(a,b)];

% Set the step size
h = 0.01*a;

% Solve the ODE using Euler's method
N_euler = round((tspan(2)-tspan(1))/h);
t_euler = tspan(1):h:tspan(2);
y_euler = zeros(N_euler+1, 1);
y_euler(1) = y0;
for i=1:N_euler
    y_euler(i+1) = y_euler(i) + h*dydt(t_euler(i), y_euler(i), a, b);
end

% Solve the ODE using Heun's method (improved Euler

% Define the differential equation
dydt = @(x,y,a,b) a*x^(-2) - b;

% Set the parameters a and b
a = 8;
b = 8;

% Set the initial condition
y0 = 1;

% Set the time interval
tspan = [0, max(a,b)];

% Set the step size
h = 0.01*a;

% Solve the ODE using Euler's method
N_euler = round((tspan(2)-tspan(1))/h);
t_euler = tspan(1):h:tspan(2);
y_euler = zeros(N_euler+1, 1);
y_euler(1) = y0;
for i=1:N_euler
    y_euler(i+1) = y_euler(i) + h*dydt(t_euler(i), y_euler(i), a, b);
end