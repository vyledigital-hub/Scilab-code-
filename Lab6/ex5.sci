w = linspace(-%pi, %pi, 1000);
Y = (1 + exp(-%i * w)) ./ (1 - 0.5 * exp(-%i * w));

figure(4);
subplot(2,1,1);
plot(w, abs(Y));
xtitle('Phổ biên độ của ngõ ra Y(e^{j\omega})', '\omega (rad)', 'Biên độ');
xgrid(1);

subplot(2,1,2);
plot(w, atan(imag(Y), real(Y)));
xtitle('Phổ pha của ngõ ra Y(e^{j\omega})', '\omega (rad)', 'Pha (rad)');
xgrid(1);
