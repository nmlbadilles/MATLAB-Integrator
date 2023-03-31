%Nil Marc Badilles

clc;
clear all;
disp('GAUSS LAGUERRE INTEGRATION (3pt formula)');

    w1=(2+sqrt(2));
    w2=(2-sqrt(2));
    x1=(2-sqrt(2));
    x2=(2+sqrt(2));

    E=input('Enter f(x): ','s');
    
    f1=inline(E);
    I=f1(1);
    fprintf('Integration (1pt formula) of given function is = %f\n',I);
    
    f2=inline(E);
    H=(1/4).*(w1*f2(x1)+w2*f2(x2));
    fprintf('Integration (2pt formula) of given function is = %f\n',H);
    
    f3=inline(E);
    J=(((0.71109).*(f3(0.41577)))+((0.257852).*(f3(2.29428)))+((0.01039).*(f3(6.28995))));
    fprintf('Integration (3pt formula) of given function is = %f\n',J);


