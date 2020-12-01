function x = IDFTsum(X)
% x[n]=\frac{1}{N}\sum_{k=0}^{N-1}X_N(k)e^{j2\pi kn/N}
% x(n)=(1/N)\sum_{k=1}^{N}X(k)*exp(j*2*pi*(k-1)*(n-1)/N),1≤n≤N
N = length(X);
x = zeros(1,N);
for n=1:N
for k=1:N
    x(n)=x(n)+(1/N)*sum(X(k)*exp(j*2*pi*(k-1)*(n-1)/N));
end
end
end