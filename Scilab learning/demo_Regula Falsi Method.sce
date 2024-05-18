clc;
disp('By using Regula Falsi Method find the approximate root of given polynomial.');
x=poly(0,'x');
P= input('Enter polynomial to find its root=');
disp('The given polynomial is',P);
a=input('Enter value of a=');
b=input('Enter value of b=');
Pa=horner(P,a);
Pb=horner(P,b);
while(Pa*Pb)>0
    disp('Choose another value a and b');
    a=input('Enter value of a=');
    b=input('Enter value of b=');
    Pa=horner(P,a);
    Pb=horner(P,b);
end
if Pa==0
mprintf('The root of the given polynomial is=%f\n',a);
elseif Pb==0
    mprintf('The root of the given polynomial is=%f\n',b);
else
    mprintf('The root is between %f and %f\n',a,b);
end
n=input('Enter the number of approximations you want to perform=');
for i=1:n
    mprintf('Approximations number %i:\n',i);
    c=(a*Pb-b*Pa)/(Pb-Pa);
    Pc=horner(P,c);
    if Pc==0
        mprintf('The root of the given polynomialis =%f\n',c);
    elseif (Pa*Pc)<0
        b=c;
        Pb=Pc;
        mprintf('There is a root between %f and %f\n',a,b);
    else
        a=c;
        Pa=Pc;
        mprintf('There is a root between %f and %f\n',a,b);
    end
end
mprintf('After performing %i number of approximations the approximate root of the given eqaution is %f\n',n,c);

