%Nil Marc Badilles

clc;
clear all
disp('GAUSS LOBATTO INTEGRATION:');
E = input('Please enter f(x):','s');
f = inline(E);
a = input('Enter upper bound:');
b = input('Enter lower bound:');
n = input('Enter value for n:');
f = inline(E);

lc = [];

for k = 0:n-1
    if n>=2*k
        fnk = factorial(2*n-2*k);
        fnp = 2^n*factorial(k)*factorial(n-k)*factorial(n-2*k);
        lc(n-2*k+1)=(-1)^k*fnk/fnp;
    end
end

lcd = [];
for k = 0:n-1
    if n>=2*k
        lcd((n-2*k+1)) = (n-2*k)*lc(n-2*k+1);
    end
end

lcd(n)=0;

x = roots(fliplr(lcd(2:n+1)));
x1 = sort(x,'descend');
pv = zeros(size(x));

for k = 1:n+1
    pv = pv +lc(k)*x.^(k-1);
end

n = n+1;
w = 2./(n*(n-1)*pv.^2);
w = (2/(n*(n-1)));
w;
2/(n*(n-1));

x1 = (x*(b-a)+(a+b))/2;
pts = [a;x1;b];

s = (b-a)*w'*f(pts)/2;

fprintf('The integration of given function is= %f\n', real(s));

