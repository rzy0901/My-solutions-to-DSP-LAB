clear;
% linearity test
% check T{Ax1[n]+Bx2[n]}=A*T{x1[n]}+ B*T{x2[n]}
x1=10*rand(1,10);x2=10*rand(1,10);
figure(1)%input
subplot(1,3,1),stem(x1),xlabel('n'),title('x1[n]');
subplot(1,3,2),stem(x2),xlabel('n'),title('x2[n]');
subplot(1,3,3),stem(2*x1+3*x2),xlabel('n'),title('2*x1[n]+3*x2[n]');

figure(2)%linearity test
orient('tall')
sgtitle('linearity test')
% bbox1
subplot(3,2,1),stem(2*bbox1(x1)+3*bbox1(x2)),xlabel('n'),title('2*bbox1(x1)+3*bbox1(x2)');
subplot(3,2,2),stem(bbox1(2*x1+3*x2)),xlabel('n'),title('bbox1(2*x1+3*x2)');
% bbox2
subplot(3,2,3),stem(2*bbox2(x1)+3*bbox2(x2)),xlabel('n'),title('2*bbox2(x1)+3*bbox2(x2)');
subplot(3,2,4),stem(bbox2(2*x1+3*x2)),xlabel('n'),title('bbox2(2*x1+3*x2)');
% bbox3
subplot(3,2,5),stem(2*bbox3(x1)+3*bbox3(x2)),xlabel('n'),title('2*bbox3(x1)+3*bbox3(x2)');
subplot(3,2,6),stem(bbox3(2*x1+3*x2)),xlabel('n'),title('bbox3(2*x1+3*x2)');






