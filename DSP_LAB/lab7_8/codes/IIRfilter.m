function y = IIRfilter(x)
theta = (3146/8000)*2*pi;
r = 0.995;
N = length(x);
y = zeros(1,N);
y(1) = x(1);
y(2) = x(2)+2*r*cos(theta);
for i = 3:N
y(i) = x(i)+2*r*cos(theta).*y(i-1)-(r^2).*y(i-2);
end
end