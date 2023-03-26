% Code by Tran Nam Phong - B20DCVT288



function output = bai27(C,R,t1,t2,h,t0,u0)
    u(1) = 0; x(1) = 0;
    n = (t2-t1)/h;
    f = @(u) (-1/(R*C)*u) + 1/(R*C);
    for i = 1:n
        k1 = h*f(u(i));
        k2 = h*f(u(i)+k1/2);
        k3 = h*f(u(i)+k2/2);
        k4 = h*f(u(i)+k3);
        u(i+1) = u(i) + (k1+2*k2+2*k3+k4)/6;
        x(i+1) = x(i) + h;
    end
    output = [ x' u' ];
    % use ode45 to find the solution
    t0 = 0;
    f = @(t,u) (-1/(R*C)*u) + 1/(R*C);
    [t, u_ode45] = ode45(f, [t1 t2], u0, n);
    subplot(2,1,1);
    plot(t,u_ode45,'r');
    legend('ode45');

    subplot(2,1,2);
    plot(x,u,'b');
    legend('RK4');
end


