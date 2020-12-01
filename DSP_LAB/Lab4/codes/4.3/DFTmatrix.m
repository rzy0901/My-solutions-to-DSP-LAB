function A = DFTmatrix(N)
A=zeros(N,N);
for k=1:N
for n=1:N
    A(k,n)=exp(-j*2*pi*(k-1)*(n-1)/N);
end
end
end