clear;
n=[0:9]';%N=10;
x1=(n==0);x2=ones(10,1);x3=exp(j*2*pi*n/10);x4=cos(2*pi*n/10);
A=DFTmatrix(10);
X1=A*x1;X2=A*x2;X3=A*x3;X4=A*x4;
figure(1)% DFT plots
sgtitle('Magnitude plots of DFT')
subplot(411),stem([0:9]',abs(X1)),xlabel('k'),ylabel('X1'),title('magnitude plot for DFT(x1)')
subplot(412),stem([0:9]',abs(X2)),xlabel('k'),ylabel('X2'),title('magnitude plot for DFT(x2)')
subplot(413),stem([0:9]',abs(X3)),xlabel('k'),ylabel('X3'),title('magnitude plot for DFT(x3)')
subplot(414),stem([0:9]',abs(X4)),xlabel('k'),ylabel('X4'),title('magnitude plot for DFT(x4)')
