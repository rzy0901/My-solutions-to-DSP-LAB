clear;
% linear envelope
fs = 8192;
rhythm=1;
x = linspace(0, 2 * pi * rhythm, fs * rhythm);
y = sin(440*x);
waves=y.*(1-(1/max(x))*x);
subplot(121),plot(x,waves); axis([0,2*pi,-2,2]);
subplot(122),plot(x,waves);axis([0,0.25,-2,2]);
sound(waves, fs);