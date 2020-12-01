function waves= gen_wave(tone,rhythm,fs,scale)
%tone为数字音符，rhythm为节拍，即每个音符持续时长，fs为采样频率，scale为调号
if(tone==-1)%4#
    freq=831.4086;
elseif(tone==-2)%5#
    freq=933;
else
    freq=num2freq(tone,scale);
end
x=linspace(0,2*pi*rhythm,rhythm*fs);
waves=sin(freq.*x);
end