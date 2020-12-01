function [X,w] = DTFTsamples(x)
N = length(x);
k = 0:N-1;
w = 2*pi*k/N;
w(w>=pi)=w(w>=pi)-2*pi;% shift the range from [0,2*pi] to [-pi,pi]
w = fftshift(w);
X = fftshift(DFTsum(x));
display(w);display(X);
end