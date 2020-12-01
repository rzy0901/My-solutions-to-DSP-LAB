clear;
% part 1
N = 20;
k = 0:N-1;
x = hamming(20);
X20 = DFTsum(x);
figure(1);
stem(k,abs(X20)),xlabel('k'),ylabel('magnitude of |X_{20}[k]|'),title('magnitude of |X_{20}[k]|');
xlim([-1,20]);ylim([-2,max(abs(X20))+2]);
% part 2
figure(2);
[X,w] = DTFTsamples(x);
figure(2);
stem(w,abs(X)),xlabel('\omega(rad/sample)'),ylabel('magnitude of DTFT samples of x[n]'),title('magnitude of DTFT samples of x[n]');
xlim([w(1)-0.1,w(N)+0.1]);ylim([-2,max(abs(X))+2]);