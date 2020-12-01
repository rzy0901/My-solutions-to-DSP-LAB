function y=S1(x)
% y[n]=x[n]-x[n-1]
N=length(x);
x=[0 x];
y=zeros(1,N);
for n=1:N
    y(n)=x(n+1)-x(n);
end
end