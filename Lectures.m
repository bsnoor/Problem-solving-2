% הצג משיק לפונקציה בנקודה נתונה  X0=3
syms x
s=0:0.1:10;
f=x^2;
y=subs(f,x,s); % החלף מספרים בפונקציה המקורית במספרים אמיתיים
y1=subs(diff(f),x,s);% החלף את המספר בנגזרת של פונקציה במספר האמיתי
plot(s,y);
hold;
x0=3;
k=subs(diff(f),x,x0);
y0=subs(f,x,x0);
y=k*(x-x0)+y0;%למוצא את הפונקציה של המשיק 
res=subs(y,x,s);
plot(s,res,'r')% הקו האדות הוא המשיק,הקו הכחול הוא העקומה המקורית של הפונקציה 
title('f=x^2');
ylabel('Y ציר')
xlabel('x ציר')
legend({'f=x^2','y=6*x-9'},'Location','southwest')


clc, clear
syms x
f2=sin(x)/x;
f2_new=taylor(f2,x,0);
ezplot(f2)
grid on;
hold on;
ezplot(f2_new)
grid on
ylabel(' ציר Y')
xlabel('ציר x')
legend({'f2=sin(x)/x','f2->new=x^5/120 -x^3/6 +x'})
