function I=integ1(N)
% numerically computing the integral of sin^2(5t) over [0,2*pi];
n=0:N;
nt=2*pi/N*n;
y=(sin(5*nt)).^2;
s=y*(2*pi/N);
I=sum(s);
end

