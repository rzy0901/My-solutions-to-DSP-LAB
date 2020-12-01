clear;
syms x1 y1 x2 y2;
y1=(sin(5*x1))^2;
y2=exp(x2);
integ1=int(y1,x1,0,2*pi);
display(integ1);
integ2=int(y2,x2,0,1);
display(integ2);
