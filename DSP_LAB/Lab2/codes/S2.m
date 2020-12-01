function y=S2(x)
% y[n]=(1/2)y[n-1]+x[n]
N=length(x);
y=zeros(1,N+1);
for n=1:length(x)
y(n+1)=x(n)+(1/2)*y(n);
end
y=y(2:N+1);
end