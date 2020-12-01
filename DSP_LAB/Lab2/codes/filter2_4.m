function y=filter2_4(x)
% y[n]=0.8y[n-1]+0.2x[n]
N=length(x);
y=zeros(1,N+1);
for n=1:N
y(n+1)=0.2*x(n)+0.8*y(n);
end
y=y(2:N+1);
end