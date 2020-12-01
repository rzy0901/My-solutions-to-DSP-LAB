clear;
t1=0:0.001:2;
t2=0:0.001:1;
s1=(t1<1)&(t1~=0);
s2=(t2<=1/4)+(t2>=3/4)-1/2;
figure(1);
plot(t1,s1);xlabel('t'),ylabel('s(t)');xlim([-0.2 2.2]);ylim([-0.2 1.2]);
figure(2);
plot(t2,s2);xlabel('t'),ylabel('s(t)');xlim([-0.05 1.05]);ylim([-0.55 0.55]);