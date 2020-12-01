clear;
n=0:2:60;
y=sin(n/6);
sgtitle('11812214 任振裕')
subplot(311),stem(n,y),xlabel('n'),ylabel('y'),title('discrete time signal y');
subplot(312),
n1=0:2:60;
z=sin(n1/6);
subplot(3,1,2)
plot(n1,z),xlabel('t'),ylabel('z'),title('continuous time signal y');
n2=0:10:60;
w=sin(n2/6);
subplot(3,1,3)
plot(n2,w),xlabel('t'),ylabel('w'),title('continuous time signal y');
% The second continuous time plot is more accurate than the first continuous time plot;
