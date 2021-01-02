function y = FIRfilter(x)
[X,w]=DTFT(x,0);
[Xmax,Imax]=max(abs(X));
h = [1 -2*cos(w(Imax)) 1];
y = conv(x,h);
end