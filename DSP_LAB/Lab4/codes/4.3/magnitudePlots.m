clear;
n=[0:9];%N=10;
x1=(n==0);
x2=ones(1,10);
x3=exp(j*2*pi*n/10);
x4=cos(2*pi*n/10);
X1=DFTsum(x1);X2=DFTsum(x2);X3=DFTsum(x3);X4=DFTsum(x4);
figure(1)% DFT plots
sgtitle('Magnitude plots of DFT')
subplot(411),stem([0:9],abs(X1)),xlabel('k'),ylabel('abs(DFTsum(x1))'),title('magnitude plot for DFT(x1)')
subplot(412),stem([0:9],abs(X2)),xlabel('k'),ylabel('abs(DFTsum(x2))'),title('magnitude plot for DFT(x2)')
subplot(413),stem([0:9],abs(X3)),xlabel('k'),ylabel('abs(DFTsum(x3))'),title('magnitude plot for DFT(x3)')
subplot(414),stem([0:9],abs(X4)),xlabel('k'),ylabel('abs(DFTsum(x4))'),title('magnitude plot for DFT(x4)')
figure(2)% IDFT plots
r1=IDFTsum(X1);r2=IDFTsum(X2);r3=IDFTsum(X3);r4=IDFTsum(X4);
sgtitle('Magnitude plots of IDFT')
subplot(411),stem([0:9],abs(r1)),xlabel('n'),ylabel('abs(IDFTsum(r1))'),title('magnitude plot for IDFT(r1)')
subplot(412),stem([0:9],abs(r2)),xlabel('n'),ylabel('abs(IDFTsum(r2))'),title('magnitude plot for IDFT(r2)')
subplot(413),stem([0:9],abs(r3)),xlabel('n'),ylabel('abs(IDFTsum(r3))'),title('magnitude plot for IDFT(r3)')
subplot(414),stem([0:9],abs(r4)),xlabel('n'),ylabel('abs(IDFTsum(r4))'),title('magnitude plot for IDFT(r4)')


