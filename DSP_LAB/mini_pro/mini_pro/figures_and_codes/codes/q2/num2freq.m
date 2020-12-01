function freq = num2freq(num,scale)
% 1,2,3,4,5,6,7：低八度
% 8,9,10,11,12,13,14:中音
% 15,16,17,18,19,20,21:高八度

% 在原有基础上添加一个判断语句
% freq0 为低八度的1
switch(scale)
    case'A'
        freq0=440;
    case'B'
        freq0=494;
    case'C'
        freq0=261.5;
    case'D'
        freq0=293.5;
    case'E'
        freq0=329.5;
    case'F'
        freq0=349;
    case'G'
        freq0=391.5;
end

% 原函数  
a = 1:12;
freqlist=freq0.*2.^((a-1)./12);
base = [freqlist(1) freqlist(3) freqlist(5) freqlist(6) freqlist(8) freqlist(10) freqlist(12)];
b=floor(num./7);
c=rem(num,7);
if num <= 0
    freq = 0;
else
    if (c >0)
        freq=base(c).*2.^b;
    else
        freq=base(7).*2.^(b-1);
    end   
end