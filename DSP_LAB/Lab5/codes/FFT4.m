function X = FFT4(x)
% length(x) = 4
 r = 0:1;
 X0 = FFT2([x(1) x(3)]);  
 X1 = FFT2([x(2) x(4)]); 
 temp = X1.*exp(-j*2*pi/4*r);
 X = [X0+temp X0-temp];
end