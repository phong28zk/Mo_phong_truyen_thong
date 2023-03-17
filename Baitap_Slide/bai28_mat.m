% Code by Tran Nam Phong - B20DCVT288

% Bai 28:
% Tim nghiem phuong trinh vi phan y''(t) + y(t) = 0
% voi y(0) = 1, y'(0) = 0; % RK 4
% Mo phong ham nhieu loan duoc xac dinh le e^-t


function output = bai28_mat(t0,y0,y1,h,n)
    % t0 = 0;
    % y0 = 1;
    % y1 = 0;
    % h = 0.1;
    % n = 10;
    dydt = @(t,y) [y(2); -y(1)-exp(-t)];
    % Set the initial conditions
    y0 = [1; 0];

    % Set the time interval
    tspan = [0, 10];

    % Solve the ODE using RK4 with a fixed step size
    h = 0.1;
    N = round((tspan(2)-tspan(1))/h);
    t = tspan(1):h:tspan(2);
    y = zeros(length(y0), N+1);
    y(:,1) = y0;
    for i=1:N
        k1 = dydt(t(i), y(:,i));
        k2 = dydt(t(i)+h/2, y(:,i)+h/2*k1);
        k3 = dydt(t(i)+h/2, y(:,i)+h/2*k2);
        k4 = dydt(t(i)+h, y(:,i)+h*k3);
        y(:,i+1) = y(:,i) + h/6*(k1+2*k2+2*k3+k4);
    end
    output = y;
    % Plot the solution
    plot(t,y(1,:))
    xlabel('Time')
    ylabel('Solution')
end

