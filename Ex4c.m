function y=bisection(x)
y=3*x.^4+8*x.^3+6*x.^2-10;


clear,clc;
x=-2:0.001:2;
y=bisection(x);
figure(1)
plot(x,y);
grid;
a=0;
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
plot(c,'-b')

