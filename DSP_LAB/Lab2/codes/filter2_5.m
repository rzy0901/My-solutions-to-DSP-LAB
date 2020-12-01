function y=filter2_5(x)
% y[n]=y[n-1]+(1/3){x[n]-x[n-3]}
N=length(x);
y=zeros(1,N+1);
x=[zeros(1,3) x];
for n=1:N
    y(n+1)=y(n)+(1/3)*(x(n+3)-x(n));
end
y=y(2:N+1);
end