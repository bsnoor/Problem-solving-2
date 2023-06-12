function y=bisection(x)
y=(x-2).*cos(x)-1; % be be attentive,should to have a dot here 
clear,clc;
x=-2*pi:0.001:2*pi;
y=bisection(x);
figure(1)
plot(x,y);
grid;
a=-6;
b=-4;
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


