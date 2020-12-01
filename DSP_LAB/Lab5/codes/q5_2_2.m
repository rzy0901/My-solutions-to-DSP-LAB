clear;
x = sin(0.1*pi*[0:49]);
N = input("Please specify a range N:\n");
display(N);
x = [x zeros(1,N-50)];% zero padding;
display(x)
[X,w] = DTFTsamples(x);
stem(w,abs(X)),xlabel('\omega(rad/sample)'),ylabel('magnitude of DTFT samples of x[n]'),title('magnitude of DTFT samples of x[n]');
