function X=DTFT(x,n0,dw)
%n0 time index of 1st element of x
%dw spacing between the samples of the Matlab vector
w=-pi:dw:pi;
n=1+n0-1:length(x)+n0-1
%X(k)=sum(x.*exp(-j*w(k).*n));
for k=1:length(w)
    X(k)=sum(x.*exp(-j*w(k).*n));
end
end