clc;
disp('Performing Eulers Method to solve Differential Equation of First Order and First Degree with initial condition.');
deff('[z]=f(x,y)','z=(y-x)/sqrt(x*y)');
x0 = input('Enter the initial value of x=');
y0 = input('Enter the initial value of y=');
xn = input('Enter the final value of x=');
h = input('Enter increment value of x=');
x = [x0:h:xn]
n = length(x);
y(1)=y0;
for j=1:n-1
y(j+1)=y(j)+h*f(x(j),y(j));
printf("Iteration Number %d \n at x= %f, y=%f\n",j,x(j+1),y(j+1));
end
