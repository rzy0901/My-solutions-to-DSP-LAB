function [X,w] = DTFT(x,M)
% This function computes samples of the DTFT of x. 
% To compute the DTFT of x, use
%
%             [X,w] = DTFT(x,0)
%
% where X is the vector of DTFT samples and w is the 
% vector of radial frequencies. To compute at least
% M samples of the DTFT, you may use the command
%
%             [X,w] = DTFT(x,M)
%
% This is useful when the plot of X versus w does
% not contain a sufficient number of points.

N = max(M,length(x));
N = 2^(ceil(log(N)/log(2)));

% Take the padded fft
X = fft(x,N);
w = 2*pi*( (0:(N-1))/N );
w = w - 2*pi*(w>=pi);

% Shift FFT to go from -pi to pi
X = fftshift(X);
w = fftshift(w);

