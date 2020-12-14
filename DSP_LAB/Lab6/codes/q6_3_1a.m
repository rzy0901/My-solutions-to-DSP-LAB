clear;
h=[-0.0035,-0.0039,0.0072,0.0201,-0.0000,-0.0517,-0.0506,0.0855,0.2965,0.4008,0.2965,0.0855,-0.0506,-0.0517,-0.0000,0.0201,0.0072,-0.0039,-0.0035]
figure(1);
[mag,phase]=FreRes(h,1);
subplot(132),plot(linspace(-pi,pi,1000),-3*ones(1,1000),'.-')
figure(2);
P=h;%Since h is symmetrical impulse response;
D=[1 zeros(1,18)];
zeros = roots(P) 
poles = roots(D)
zplane(zeros,poles)