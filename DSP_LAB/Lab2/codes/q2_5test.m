clear;
[s,fs]=audioread('music.au');
s=s';
s1=S1(s);
s2=S2(s);
sound(s1,fs);
next=input('press any key to the next song');
sound(s2,fs);