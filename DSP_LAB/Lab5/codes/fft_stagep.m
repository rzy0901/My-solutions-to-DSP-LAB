function X = fft_stagep(x)
N = length(x);  
if log2(N) == fix(log2(N))  % N = 2^m
    if N == 2
        X(1) = x(1)+x(2);
        X(2) = x(1)-x(2);
    else
        r = 0:2:N-1;
        xeven = x(1:2:N);
        xodd = x(2:2:N);
        X0 = fft_stage(xeven);
        X1 = fft_stage(xodd);
        temp = X1.*exp(-j*2*pi/N*r);
        X = [X0+temp X0-temp]; 
    end
else  % N ~= 2^m
    Nzeros = 2^(fix(log2(N))+1)-N-1;
    x = [x(1:fix(N/2)) zeros(1,Nzeros) x(fix(N/2)+1:N)]; % insert null tones;
    x = [0 x]; % DC subcarrier
    X = fft_stagep(x);      
end
end