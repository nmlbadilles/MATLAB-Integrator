%Nil Marc Badilles

clc;
clear all;
disp('GAUSS HERMITE INTEGRATION');

    x1=(-1/sqrt(2));
    x2=(1/sqrt(2));
    x3=(-sqrt(3/2));
    x4=(sqrt(3/2));    

    E=input('Enter g(x):','s');
    
    f1=inline(E);
    G=sqrt(pi).*f1(0);
    fprintf('Integration (1pt formula) of given function is = %f\n',G);

    f2=inline(E);
    H=(sqrt(pi)/2).*(f2(x1)+f2(x2));
    fprintf('Integration (2pt formula) of given function is = %f\n',H);

    f3=inline(E);
    I=(sqrt(pi)/6).*(f3(x3)+((6).*f3(0))+f3(x4));
    fprintf('Integration (3pt formula) of given function is = %f\n',I);

