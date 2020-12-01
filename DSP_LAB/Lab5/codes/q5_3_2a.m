clear
n=0:1:7;N = length(n);
x1 = (n==0);
x2 = ones(1,N);
x3 = exp(j*2*pi*n/N);
k = 0:7;
sgtitle('FFT8 and DFTsum')
subplot(321),stem(n,abs(FFT8(x1))),xlabel('k'),ylabel('FFT8(x1)'),title('magnitude of FFT8(x1)');
subplot(322),stem(n,abs(DFTsum(x1))),xlabel('k'),ylabel('DFTsum(x1)'),title('magnitude of DFTsum(x1)');
subplot(323),stem(n,abs(FFT8(x2))),xlabel('k'),ylabel('FFT8(x2)'),title('magnitude of FFT8(x2)');
subplot(324),stem(n,abs(DFTsum(x2))),xlabel('k'),ylabel('DFTsum(x2)'),title('magnitude of DFTsum(x2)');
subplot(325),stem(n,abs(FFT8(x3))),xlabel('k'),ylabel('FFT8(x3)'),title('magnitude of FFT8(x3)');
subplot(326),stem(n,abs(DFTsum(x3))),xlabel('k'),ylabel('DFTsum(x3)'),title('magnitude of DFTsum(x3)');