%Nil Marc Badilles

clc;
clear all;
disp('GAUSS CHEBYSHEV INTEGRATION');

E = input('Enter f(x):', 's');
n = input('Enter n:');
f = inline(E);

sum1 = 0;
sum2 = 0;

for k = 1:1:n
    
        x1 = cos(pi*(2*k-1)/(2*n));
        x2 = cos((k*pi)/(n+1));
    
        sum1 = f(x1) + sum1;
        sum2 = sin((pi*k)/(n+1))^2*f(x2) + sum2 ;

end

    I = (pi/n)*sum1;
    J = (pi/(n+1))*sum2;

fprintf('1st integration: %f\n', I);
fprintf('2nd integration: %f\n', J);

