clear;
IN=zeros(1,100);
for N=1:100
IN(N)=integ2(N);
end
plot([1:100],IN),xlabel('N'),ylabel('I(N)'),title({'plot of integ2';'11812214 任振裕'});