w = linspace(-%pi, %pi, 1000);
H = 1 ./ (1 + 0.1 * exp(-%i * w) + 0.2 * exp(-%i * 2 * w));

figure(3);
subplot(2,1,1);
plot(w, abs(H));
xtitle('Phổ biên độ của H(e^{j\omega})', '\omega (rad)', 'Biên độ');
xgrid(1);

subplot(2,1,2);
plot(w, atan(imag(H), real(H)));
xtitle('Phổ pha của H(e^{j\omega})', '\omega (rad)', 'Pha (rad)');
xgrid(1);
