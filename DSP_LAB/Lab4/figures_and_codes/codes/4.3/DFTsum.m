function X = DFTsum(x)
% X_N[k]=\sum_{n=0}^{N-1}x[n]e^{-j*2*pik*n/N}
% X(k)=\sum_{n=1}^Nx(n)e^(-j*2*pi*(k-1)*(n-1)/N), 1≤k≤N
N = length(x);
X = zeros(1,N);
for k=1:N
for n=1:N
    X(k)= X(k)+x(n)*exp(-j*2*pi*(k-1)*(n-1)/N);
end
end
end