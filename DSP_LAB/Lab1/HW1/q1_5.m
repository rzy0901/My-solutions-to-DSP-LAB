clear;
t1=[-10*pi:0.01:10*pi];
y1=sinc(t1);
t2=[-2:0.01:2];
y2=(abs(t2)<0.5);


figure(1);
sgtitle('11812214 任振裕');
subplot(211),plot(t1,y1),xlabel('t(s)'),ylabel('sinc(t)'),title('sinc(t)');
subplot(212),plot(t2,y2),xlabel('t(s)'),ylabel('rect(t)'),title('rect(t)');


figure(2);
n1=-20:20;
a=[0.8 1 1.5];
y1=a(1).^n1.*((n1>=0)-(n1>=10));
y2=a(2).^n1.*((n1>=0)-(n1>=10));
y3=a(3).^n1.*((n1>=0)-(n1>=10));
sgtitle('11812214 任振裕');
orient('tall');
subplot(311),stem(n1,y1),xlabel('n'),ylabel('y1'),title('y1=0.8^n*(u[n]-u[n-10])');
subplot(312),stem(n1,y2),xlabel('n'),ylabel('y2'),title('y2=u[n]-u[n-10]');
subplot(313),stem(n1,y3),xlabel('n'),ylabel('y3'),title('y3=1.5^n*(u[n]-u[n-10])');

figure(3);
n2=-1:10;
f1=cos(pi/4*n2).*a(1).^n2.*(n2>=0);
f2=cos(pi/4*n2).*a(2).^n2.*(n2>=0);
f3=cos(pi/4*n2).*a(3).^n2.*(n2>=0);
sgtitle('11812214 任振裕');
orient('tall');
subplot(311),stem(n2,f1),xlabel('n'),ylabel('f1'),title('f1=cos(\pi/4n)*0.8^n*u[n]');
subplot(312),stem(n2,f2),xlabel('n'),ylabel('f2'),title('f2=cos(\pi/4n)u[n]');
subplot(313),stem(n2,f3),xlabel('n'),ylabel('f3'),title('f3=cos(\pi/4n)*1.5^n*u[n]');







