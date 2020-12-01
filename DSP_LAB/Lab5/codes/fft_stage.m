function X = fft_stage(x)
N = length(x);  % N=2^m in this function
if N == 2
    X(1) = x(1)+x(2);
    X(2) = x(1)-x(2);
else
    r = 0:1:N/2-1;
    xeven = x(1:2:N);
    xodd = x(2:2:N);
    X0 = fft_stage(xeven);
    X1 = fft_stage(xodd);
    temp = X1.*exp(-j*2*pi/N*r);
    X = [X0+temp X0-temp]; 
end
end