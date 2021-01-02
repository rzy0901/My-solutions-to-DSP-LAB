clear;
w = -pi:0.01:pi; z = exp(1j*w);
H1 = 1-2*cos(pi/6)*z.^(-1)+z.^(-2);
H2 = 1-2*cos(pi/3)*z.^(-1)+z.^(-2);
H3 = 1-2*cos(pi/2)*z.^(-1)+z.^(-2);
subplot(1,3,1);plot(w,abs(H1));title('\theta=\pi/6');
subplot(1,3,2);plot(w,abs(H2));title('\theta=\pi/3');
subplot(1,3,3);plot(w,abs(H3));title('\theta=\pi/2');