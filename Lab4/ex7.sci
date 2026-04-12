x = [1; 2; -3; 2; 1];
h = [1; 0; -1; -1; 1];
N = length(x);

n_idx = 0:(N-1);

y_fold = zeros(N, 1);
for n = 0:(N-1)
    sum_val = 0;
    for k = 0:(N-1)
        idx_x = pmodulo(n - k, N) + 1; 
        sum_val = sum_val + h(k+1) * x(idx_x);
    end
    y_fold(n+1) = sum_val;
end
disp("y(n) - Tích chập vòng (Folding & Shifting):");
disp(y_fold');

X_circ = zeros(N, N);
for k = 0:(N-1)
    for n = 0:(N-1)
        idx_x = pmodulo(n - k, N) + 1;
        X_circ(n+1, k+1) = x(idx_x);
    end
end

y_matrix = X_circ * h;
disp("y(n) - Tích chập vòng (Circulant Matrix Method):");
disp(y_matrix');

if max(abs(y_fold - y_matrix)) < 1e-10 then
    disp("=> Xác thực: Hai phương pháp cho kết quả đồng nhất.");
end

Ex = x.^2;
Ey = y_matrix.^2;

figure(1);
clf;

subplot(3,1,1);
plot2d3(n_idx, x, style=2); 
plot2d(n_idx, x, style=-2);
xtitle("Tín hiệu đầu vào x(n)", "n", "Amplitude");
xgrid();

subplot(3,1,2);
plot2d3(n_idx, y_matrix, style=3);
plot2d(n_idx, y_matrix, style=-3);
xtitle("Tín hiệu ngõ ra y(n) = x(n) ⊛ h(n) (N=5)", "n", "Amplitude");
xgrid();

subplot(3,1,3);

ymax = max(max(Ex), max(Ey)) + 2; 
a = gca();
a.data_bounds = [0, 0; N-1, ymax]; 

plot2d3(n_idx, Ex, style=5); 
e1 = plot2d(n_idx, Ex, style=-5);
plot2d3(n_idx, Ey, style=6);
e2 = plot2d(n_idx, Ey, style=-6);

xtitle("Năng lượng tín hiệu E_x(n) và E_y(n)", "n", "Energy (|A|^2)");

hl = legend([e1.children(1), e2.children(1)], ["$E_x(n)$", "$E_y(n)$"], pos=1);
xgrid();
