clear;
N=0:20;
x1=kaiser(21,0);x2=kaiser(21,1);x3=kaiser(21,5);
[X1,w1]=DTFT(x1,512);
[X2,w2]=DTFT(x2,512);
[X3,w3]=DTFT(x3,512);
figure(1);
sgtitle('three plots of Kaiser windows.');
subplot(3,2,1);stem(N,x1);xlabel('n(s)');title('kaiser window for beta=0');
subplot(3,2,2);plot(w1,20*log10(X1));xlabel('w(rad)');title('magnitude of DTFT for beta=0');
subplot(3,2,3);stem(N,x2);xlabel('n(s)');title('kaiser window for beta=1');
subplot(3,2,4);plot(w2,20*log10(X2));xlabel('w(rad)');title('magnitude of DTFT for beta=1');
subplot(3,2,5);stem(N,x3);xlabel('n(s)');title('kaiser window for beta=5');
subplot(3,2,6);plot(w3,20*log10(X3));xlabel('w(rad)');title('magnitude of DTFT for beta=5');
figure(2);
load nspeech2;
beta=4.0909;N=51;
w = kaiser(N, beta);
h1 = LPFtrunc(N);
h2 = h1.*w';
[H,w] = DTFT(h2,512);
sgtitle('three plots of magnitude response.')
subplot(3,1,1);plot(w,20*log10(H));title('DTFT of filter in dB');
subplot(3,1,2);plot(w(abs(w)<=1.8),20*log10(H(abs(w)<=1.8)));title('|w| <= 1.8 in dB');
subplot(3,1,3);plot(w(abs(w)>=2.2),20*log10(H(abs(w)>=2.2)));title('|w| >= 2.2 in dB');
f = conv(h2,nspeech2);
[F,w] = DTFT(f,512);
figure(3);plot(w,20*log10(F)); title('magnitude of filtered signal in dB');xlim([-3.5 3.5]);

