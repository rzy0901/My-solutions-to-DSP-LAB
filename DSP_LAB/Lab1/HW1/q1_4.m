clear;
[signal,fs]=audioread('speech.au');
t=linspace(0,1,length(signal))*(length(signal)/fs);
plot(t,signal);
xlabel('t(s)');
ylabel('f(t)');
title({'plot of speech signal';'11812214 任振裕'});
sound(signal,fs);
