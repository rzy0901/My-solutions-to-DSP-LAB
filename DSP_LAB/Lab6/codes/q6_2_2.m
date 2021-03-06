clear;
P1 = [-1 2 -3 6 -3 2 -1];
D1 = [1 zeros(1,6)];
P2 = [3 -2.4 15.36 3.84 9];
D2 = [5 -8.5 17.6 4.7 -6];
P3 = [2 0.2 6.4 4.6 2.4];
D3 = [5 1 6.6 4.2 24];
zeros1 = roots(P1);poles1 = roots(D1);display(zeros1);display(poles1);
zeros2 = roots(P2);poles2 = roots(D2);display(zeros2);display(poles2);
zeros3 = roots(P3);poles3 = roots(D3);display(zeros3);display(poles3);
subplot(131),zplane(zeros1,poles1),title('H_1(z)');
subplot(132),zplane(zeros2,poles2),title('G_1(z)');
subplot(133),zplane(zeros3,poles3),title('G_2(z)');