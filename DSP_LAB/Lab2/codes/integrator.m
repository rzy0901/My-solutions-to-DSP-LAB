function y=integrator(x)
% y[n]=x[n]+y[n-1]
y=zeros(1,length(x)+1);
for n=1:length(x)
y(n+1)=x(n)+y(n);
end
y=y(2:length(x)+1);
end