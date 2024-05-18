clc;
disp('Solving Ordinary Differential Equation with initial condition using Scilab');
function ydot=f(x,y)
ydot=-((y+x*sin(x))/(x-2*exp(y)))
endfunction
y0 = 0;
x0 = 0;
x = 1.5;
y=ode(y0,x0,x,f);
disp( y,"at x = 1.5,y= ") ;
x = [0:0.1:4];
y=ode(y0,x0,x,f);
plot(x,y);
title("dy/dx = -(y+x sin(x))/(x-2e^y)","fontsize",5);
