function y=bisection(x)
y=2*exp(x)-2*x-3;

clear,clc;
x=0.001:3;
y=bisection(x);
figure(1)
plot(x,y);
grid;
a=0.5;
b=1;
eps=10^(-6);
mid=b-a;
m=1;
format long
while mid >=eps
    x=(a+b)/2;
    c(m)=x;
    if bisection(a)*bisection(b)<0
        b=x;
    else
        a=x;
    end
    m=m+1;
    mid=b-a;
end
disp('number of iterations: ')
disp(m);
disp('the result is :')
c(m-1)

figure(2)
plot(c,'-r')

