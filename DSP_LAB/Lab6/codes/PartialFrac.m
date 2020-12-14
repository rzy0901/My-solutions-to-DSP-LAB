function [rho,lambda,k] = PartialFrac(b,a)
% input b=[bm ... b1 b0] refers to coefficients of [z^(-m) ... z^(-1) z^0].
% input a=[an ... a1 a0] refers to coefficients of [z^(-m) ... z^(-1) z^0].
% b for numerator and a for denominator;
% Partial fraction format: K(z) + sum(rho/(1-lambda*z^(-1)));
[r, p, k] = residue(b,a);
rho = -r./p;
lambda = 1./p;
end