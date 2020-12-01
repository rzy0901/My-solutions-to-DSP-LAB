clear;
load stockrates.mat;
filtered_rate1=filter2_4(rate);
filtered_rate2=filter2_5(rate);
orient('tall');
subplot(311),stem(rate),xlabel('n'),ylabel('x[n]'),title('original rates');
subplot(312),stem(filtered_rate1),xlabel('n'),ylabel('y[n]'),title('exchange-rates through filter 2.4');
subplot(313),stem(filtered_rate2),xlabel('n'),ylabel('y[n]'),title('exchange-rates through filter 2.5');