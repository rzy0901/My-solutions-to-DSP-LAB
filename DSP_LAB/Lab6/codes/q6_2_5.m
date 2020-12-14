clear;
poles1 = [0.943 0.902]; zeros1 = [0 0];
b1 = [1]; a1 = [1 -1.845 0.850586];
[h1,t1] = impz(b1,a1);
poles2 = [1 0.85]; zeros2 = [0 0];
b2 = [1]; a2 = [1 -1.85 0.85];
[h2,t2] = impz(b2,a2);
figure(1); %H1
sgtitle('Zero-Pole plot and Impulse Response of H_1(z)')
subplot(121),zplane(zeros1',poles1'),title('Zero-Pole plot');
subplot(122),stem(t1,h1),xlabel('t'),ylabel('h'),title('Impulse Response');
figure(2); %H2
sgtitle('Zero-Pole plot and Impulse Response of H_2(z)')
subplot(121),zplane(zeros2',poles2'),title('Zero-Pole plot');
subplot(122),stem(t2,h2),xlabel('t'),ylabel('h'),title('Impulse Response');
