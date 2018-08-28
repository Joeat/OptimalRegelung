clc;clear;close all;

solinit = bvpinit(linspace(0,1,10),[0 1 0 0]);
sol = bvp4c(@ODEfun,@BCfun,solinit);

% ODE funktion
function dxdt = ODEfun(x)
    dxdt = [x(2);-sin(x(1))-x(4)/2;
            -x(1)+x(4)*cos(x(1));
               -x(2)-x(3)];
end

% Bedingungen
function bc = BCfun(xa,xb)
    bc = [xa(1,1)-1;xa(1,2)-2;xb(1,3);xb(1,4)];
end