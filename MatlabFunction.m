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

clear , clc
syms x
f=x^5-3*x^2+1;
df=diff(f); 
solve1=double(solve(df==0,x,'Real',true));
y=double(subs(f,x,solve1));
m=[solve1(1)-1;solve1(1:end-1)+diff(solve1)/2;solve1(end)+1];
kk=double(subs(df,x,m));
kkk=double(subs(df,x,m))<0;
sd=diff(double(subs(df,x,m)))<0;
ff=length(solve1);
for i=1:length(solve1)
    if sd(i)>0
        disp('min')
         disp(sd(i))
    elseif sd(i)<0
        disp(sd(i))
        disp('max')
    else
        disp('isnt max or min')
        disp(sd(i))
    end
end
fplot(f,[solve1(1)-1 solve1(end)+1])
hold on 
grid on
plot(solve1,y,'*k')
