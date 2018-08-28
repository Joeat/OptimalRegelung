clc;clear;

% Hamilton Funktion
syms x1 x2 lmd1 lmd2;
%x = sym('x',[1 2]);
%lmd = sym('lmd',[1 2]);
%H = 0.5*(x1^2+x2^2/2+u^2)+lmd1*x2+lmd2*(-x1+(1-x1^2)*x2+u);

% 
%u = solve(jacobian(H,u),'u');

%
%Dx = jacobian(H,[lmd1;lmd2]);
%Dlmd = -jacobian(H,[x1;x2]);

[x1,x2,lmd1,lmd2] = dsolve('Dx1=x2, Dx2=-lmd2-x1-x2*(x1^2-1),Dlmd1 = lmd2*(2*x1*x2+1)-x1, Dlmd2 = lmd2*(x1^2-1)-x2/2-lmd1','x1(0)=0,x2(0)=0,x1(1)=3,x2(1)=0,lmd1(1)=0,lmd2(1)=0')
%syms x lmd;
%[lmd,x]=dsolve('Dx=-0.5*x-0.5*lmd,Dlmd=-(2*x-1/2*lmd)','x(0)=3,lmd(1)=0')