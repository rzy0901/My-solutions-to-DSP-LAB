clear;
fs=8192;
rhythm=0.25;
s=gen_music(fs,rhythm);
sound(s,fs);
audiowrite('q3_output.wav', s, fs);
