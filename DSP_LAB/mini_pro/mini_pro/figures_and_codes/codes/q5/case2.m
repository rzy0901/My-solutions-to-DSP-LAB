fs = 8192;
rhythm = 1;
freq = 2;
x = linspace(0, 2 * pi * rhythm, fs * rhythm);
y = 0.1*sin(freq * x)+0.8*sin(2*freq * x)+0.05*sin(3*freq * x)+0.025*sin(4*freq * x);
waves = y.*exp(-x/(rhythm * 2* pi));
plot(x,waves);
axis([0,2*pi,-2,2]);
sound(waves,fs)