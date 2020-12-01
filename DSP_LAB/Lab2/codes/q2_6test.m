clear;
n=-10:10;
x=(n==0);
y1=S3(x);
y2=S3(S2(x));
orient('tall');
sgtitle('Impulse responses for S3 and S3(S2)');
subplot(211),stem(n,y1),xlabel('n'),ylabel('y_1[n]'),title('Impulse response for S3');
subplot(212),stem(n,y2),xlabel('n'),ylabel('y_2[n]'),title('Impulse response for S3(S2)');