T0 = 0.02; 
t = 0:0.0001:(5*T0);
xa = 3 * sin(100 * %pi * t);

subplot(3, 1, 1);
plot(t, xa);
title("Analog signal xa(t) in 5 periods");
xlabel("Time t (s)");
ylabel("Amplitude");
xgrid();

N = 6;
n = 0:1:(5*N - 1);
x_n = 3 * sin((%pi / 3) * n);

subplot(3, 1, 2);
plot2d3(n, x_n);
plot(n, x_n, "ro");
title("Discrete-time signal x(n) in 5 periods");
xlabel("Sample n");
ylabel("Amplitude");
xgrid();

delta = 0.1;
xq_n = delta * floor(x_n / delta); 

subplot(3, 1, 3); 
plot2d3(n, xq_n);
plot(n, xq_n, "bo");
title("Quantized signal xq(n) with Delta = 0.1 (Truncated)");
xlabel("Sample n");
ylabel("Amplitude");
xgrid();
