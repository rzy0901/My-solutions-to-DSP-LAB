clear;
n0=-100;
n=-100:100;
w=-pi:pi/1000:pi;
x1=(n==0) % delta[n]
x2=(n==5)  % delta[n-5]
x3=(0.5).^n.*(n>=0) %0.5^n*u[n]
X1=DTFT(x1,n0,pi/1000);
X2=DTFT(x2,n0,pi/1000);
X3=DTFT(x3,n0,pi/1000);
% delta[n]
subplot(321),plot(w,abs(X1)),xlabel('w'),ylabel('abs(X_1)'),title('magnitude response of \delta[n]');
subplot(322),plot(w,angle(X1)),xlabel('w'),ylabel('angle(X_1)'),title('phase response of \delta[n]');
% delta[n-5]
subplot(323),plot(w,abs(X2)),xlabel('w'),ylabel('abs(X_2)'),title('magnitude response of \delta[n-5]');ylim([0 2]);
subplot(324),plot(w,angle(X2)),xlabel('w'),ylabel('angle(X_2)'),title('phase response of \delta[n-5]');
%0.5^n*u[n]
subplot(325),plot(w,abs(X3)),xlabel('w'),ylabel('abs(X_3)'),title('magnitude response of 0.5^nu[n]');
subplot(326),plot(w,angle(X3)),xlabel('w'),ylabel('angle(X_3)'),title('phase response of 0.5^nu[n]');