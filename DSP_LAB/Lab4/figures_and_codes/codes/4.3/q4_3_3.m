clear;
n=0:511;x=cos(2*pi*n);A=DFTmatrix(512);
% DFTsum     t1
start1=cputime;X=DFTsum(x);end1=cputime;t1=end1-start1;display(t1);
x=x';
% DFTmatrix     t2
start2=cputime;X=A*x;end2=cputime;t2=end2-start2;display(t2);