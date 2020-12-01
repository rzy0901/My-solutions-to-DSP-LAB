clear;
% test
for i=1:21
freq(i) = num2freq(i);
end
fprintf("Input: 0, output: "+num2freq(0)+" Hz\n")
for i=1:21
    fprintf("Input: "+i+", output: "+freq(i)+" Hz\n")
end
