clc;
disp('Performing Gauss Elimination Method.');
a=[1 3 -2; 2 1 -3; 3 2 -1];
b=[5;1;6];
disp("The coefficient matrix is ",a);
c=[a b]
disp("The augmented matrix is ",c);
disp("R2=R2-c(2,1)*R1");
c(2,:)=c(2,:) -c(2,1)*c(1,:);
disp("The matrix equivalent to augmented matrix is",c);
c(3,:)=c(3,:) -c(3,1)*c(1,:);
disp("The matrix equivalent to augmented matrix",c);
c(2,:)= (1/c(2,2))*c(2,:);
disp("The matrix equivalent to augmented matrix",c);
c(3,:)=c(3,:) -c(3,2)*c(2,:);
disp("The matrix equivalent to augmented matrix is",c);
c(3,:)=(1/c(3,3))*c(3,:);
disp("The matrix equivalent to augmented matrix",c);
z=c(3,4);
y=c(2,4) -c(2,3)*z
x=c(1,4) -c(1,2)*y -c(1,3)*z;
mprintf('The solution is x=%f, y=%f,z=%f\n',x,y,z);
