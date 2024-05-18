clc;
disp('Performing Guass Jacobi Method');
A = input("Enter the Coefficient matrix A=")
B = input("Enter the constant column matrix B =")
disp("The cofficient matrix is=",A);
C = [A B];
disp("The augmented matrix is =",C);
x = 0;
y = 0;
z = 0;
n = input("Enter the number of iteration you want to perform=")
for i=1:n
    x1 = (1/C(1,1))*(C(1,4)-C(1,2)*y-C(1,3)*z);
    y1 = (1/C(2,2))*(C(2,4)-C(2,1)*x-C(2,3)*z);
    z1 = (1/C(3,3))*(C(3,4)-C(3,1)*y-C(3,2)*y);
    x=x1;
    y=y1;
    z=z1;
    mprintf("After performing %i iterations by Gauss Jacobi method, the solutions are x=%f,y=%f,z=%f\n",i,x,y,z)
end

