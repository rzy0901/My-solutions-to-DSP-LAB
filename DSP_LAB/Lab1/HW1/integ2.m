function I = integ2(N)
% numerically computing the integral of exp (t) on the interval [0,1]
n=0:N;
nt=1/N*n;
y=exp(nt);
s=y*(1/N);
I=sum(s);
end

