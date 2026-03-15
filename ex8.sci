figure(); 
n = -2:1;
x = [1, -2, 3, 6];
n1 = -1:2;
y1 = [6, 3, -2, 1];

subplot(2, 1, 1);
plot2d3(n, x);
title('Original signal x(n)'); xlabel('n'); ylabel('Amplitude');
subplot(2, 1, 2);
plot2d3(n1, y1);
title('y1(n) = x(-n)'); xlabel('n'); ylabel('Amplitude');

figure(); 
n2 = -5:-2;
y2 = [1, -2, 3, 6];

subplot(2, 1, 1);
plot2d3(n, x);
title('Original signal x(n)'); xlabel('n'); ylabel('Amplitude');
subplot(2, 1, 2);
plot2d3(n2, y2);
title('y2(n) = x(n+3)'); xlabel('n'); ylabel('Amplitude');

figure(); 
n3 = -3:0;
y3 = [12, 6, -4, 2];

subplot(2, 1, 1);
plot2d3(n, x);
title('Original signal x(n)'); xlabel('n'); ylabel('Amplitude');
subplot(2, 1, 2);
plot2d3(n3, y3);
title('y3(n) = 2x(-n-2)'); xlabel('n'); ylabel('Amplitude');
