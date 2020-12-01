function freq = num2freq(num)
% 1,2,3,4,5,6,7：低八度
% 8,9,10,11,12,13,14:中音
% 15,16,17,18,19,20,21:高八度
% num2freq(1)=440Hz
a = 1:12;
freqlist=440.*2.^((a-1)./12);
% display(freqlist)
% freqlist =
% 
%   440.0000  466.1638  493.8833  523.2511  554.3653  587.3295  622.2540  659.2551  698.4565  739.9888  783.9909  830.6094
base = [freqlist(1) freqlist(3) freqlist(5) freqlist(6) freqlist(8) freqlist(10) freqlist(12)];
% display(base)
% base =
% 
%   440.0000  493.8833  554.3653  587.3295  659.2551  739.9888  830.6094
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