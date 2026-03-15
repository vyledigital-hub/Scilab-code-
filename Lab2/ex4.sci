n = -5:5;
msignal = n .* bool2s(n >= 0); // Nhân n với hàm bước đơn vị
plot2d3(n, msignal);
title('Unit ramp signal ur(n)');
xlabel('n');
ylabel('Amplitude');
