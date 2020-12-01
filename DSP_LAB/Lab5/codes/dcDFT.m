function X = dcDFT(x)
% Using divide and conquer method to calculate FFT
% 2 stages of FFT only, computational complexity: N+N^2/2
% Divide the input into even and odd parts
N = length(x);  % Even length N
x0 = x(1:2:N);  % Even part of x[n]: x[0],x[2],...,x[N-2]
x1 = x(2:2:N);  % Odd part of x[n]: x[1],x[3],...,x[N-1]
X0 = DFTsum(x0); X0 =[X0 X0];
X1 = DFTsum(x1); X1 = [X1 X1];
X = X0+ exp(-j*2*pi/N*[0:1:N-1]).*X1;
end