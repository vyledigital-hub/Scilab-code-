w = linspace(-%pi, %pi, 1000);

X1 = 1 ./ (1 - 0.1 * exp(-%i * w));

figure(1);
subplot(2,1,1);
plot(w, abs(X1));
xtitle('Phổ biên độ x1(n)', 'Tần số \omega (rad)', 'Biên độ');
xgrid(1);

subplot(2,1,2);
plot(w, atan(imag(X1), real(X1)));
xtitle('Phổ pha x1(n)', 'Tần số \omega (rad)', 'Pha (rad)');
xgrid(1);

X2 = 1 + exp(-%i * w) + exp(-%i * 2 * w) + exp(-%i * 3 * w);

figure(2);
subplot(2,1,1);
plot(w, abs(X2));
xtitle('Phổ biên độ x2(n)', 'Tần số \omega (rad)', 'Biên độ');
xgrid(1);

subplot(2,1,2);
plot(w, atan(imag(X2), real(X2)));
xtitle('Phổ pha x2(n)', 'Tần số \omega (rad)', 'Pha (rad)');
xgrid(1);
