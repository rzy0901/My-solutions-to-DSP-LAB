function y=differentiator(x)
% y[n]=x[n]-x[n-1]
x=[0 x];
y=zeros(1,length(x)-1);
for n=1:length(x)-1
    y(n)=x(n+1)-x(n);
end
end