clear;
w=linspace(-pi,pi,1001);
h=(0.3+0.24*exp(-j.*w))./(1-0.9*exp(-j.*w));
figure(1)
plot(w,abs(h)),xlabel('w'),ylabel('abs(h)'),title('magnitude response');
figure(2)
plot(w,angle(h)),xlabel('w'),ylabel('phase(h)'),title('phase response');