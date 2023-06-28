%למצוא משיק לפונקציה XO=3
clc ,clear
syms x 
s=0:0.1:10;
f=x^2;
y=subs(f,x,s); 
y1=subs(diff(f),x,s); 
plot(s,y)
hold;
x0=3;
k=subs(diff(f),x,x0);
y0=subs(f,x,x0);
y=k*(x-x0)+y0;
res=subs(y,x,s);
plot(s,res,'r')

syms x
f2=sin(x)/x;
f2_new=taylor(f2,x,0);
ezplot(f2);
grid on 
hold on
ezplot(f2_new)
grid on
