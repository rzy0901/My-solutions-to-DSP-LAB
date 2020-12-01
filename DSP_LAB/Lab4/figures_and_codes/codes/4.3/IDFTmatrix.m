function B = IDFTmatrix(N)
A=DFTmatrix(N);
B=(1/N)*A';
end