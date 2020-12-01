clear;
n=1:1000;
ave1=zeros(1,1000);
ave2=zeros(1,1000);
sig1=random('norm',0,1,1,1000);
sig2=random('norm',0.2,1,1,1000);
figure(1);
sgtitle('11812214 任振裕')
subplot(211),plot(n,sig1),xlabel('n'),ylabel('sig1'),title('sig1');
subplot(212),plot(n,sig2),xlabel('n'),ylabel('sig2'),title('sig2');
figure(2);
for k=1:1000
ave1(k)=sum(sig1(1:k))/k;
end 
plot(n,ave1),xlabel('n'),ylabel('ave1'),title({'ave1';'11812214 任振裕'});
figure(3);
for k=1:1000
ave2(k)=sum(sig2(1:k))/k;
end
plot(n,ave2),xlabel('n'),ylabel('ave2'),title({'ave2';'11812214 任振裕'});

