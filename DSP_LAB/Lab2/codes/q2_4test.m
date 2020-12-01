clear;
n=-10:10;
x=(n==0);
y1=S1(x);
y2=S2(x);
y3=S1(S2(x));
y4=S2(S1(x));
y5=S1(x)+S2(x);
orient('tall');
sgtitle('Impulse responses for five cases')
subplot(321),stem(n,x),title('input: \delta[n]'),xlabel('n'),ylabel('\delta[n]');
subplot(322),stem(n,y1),title('impulse response for S1'),xlabel('n'),ylabel('y_1[n]');
subplot(323),stem(n,y2),title('impulse response for S2'),xlabel('n'),ylabel('y_2[n]');
subplot(324),stem(n,y3),title('impulse response for S1(S2)'),xlabel('n'),ylabel('y_3[n]');
subplot(325),stem(n,y4),title('impulse response for S2(S1)'),xlabel('n'),ylabel('y_4[n]');
subplot(326),stem(n,y5),title('impulse response for S1+S2'),xlabel('n'),ylabel('y_5[n]');


