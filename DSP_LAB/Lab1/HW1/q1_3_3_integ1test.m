clear;
IN=zeros(1,100);
for N=1:100
IN(N)=integ1(N);
end
plot([1:100],IN),xlabel('N'),ylabel('I(N)'),title({'plot of integ1';'11812214 任振裕'});
% when N=5, N=10, delta t equals 2*pi/5 and pi/5, which indicates that the start points of inteval just occur at the zero point of (sin(5t))^2, 
% making the inetgral equals zero when N=5 and 10;
