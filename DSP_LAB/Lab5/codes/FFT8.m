function X = FFT8(x)
% length(x) = 4
 r = 0:3;
 X0 = FFT4([x(1) x(3) x(5) x(7)]);
 X1 = FFT4([x(2) x(4) x(6) x(8)]); 
 temp = X1.*exp(-j*2*pi/8*r);
 X = [X0+temp X0-temp];
end