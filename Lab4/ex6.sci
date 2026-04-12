x = [1; 2; -3; 2; 1];
h = [1; 0; -1];

Lx = length(x);
Lh = length(h);
Ly = Lx + Lh - 1;

nx = 0:(Lx-1);
nh = 0:(Lh-1);
ny = 0:(Ly-1);

y_fold = zeros(Ly, 1);
for n = 1:Ly
    sum_val = 0;
    for k = 1:Lh
        idx_x = n - k + 1;
        if (idx_x >= 1) & (idx_x <= Lx) then
            sum_val = sum_val + h(k) * x(idx_x);
        end
    end
    y_fold(n) = sum_val;
end
disp("y(n) - Folding & Shifting:");
disp(y_fold');

H_conv = zeros(Ly, Lx);
for i = 1:Lx
    H_conv(i:i+Lh-1, i) = h;
end

y_matrix = H_conv * x;
disp("y(n) - Toeplitz Matrix Method:");
disp(y_matrix');

if max(abs(y_fold - y_matrix)) < 1e-10 then
    disp("=> Xác thực: Hai phương pháp cho kết quả đồng nhất.");
end

Ex = x.^2;
Ey = y_matrix.^2;

figure(1);
clf;

subplot(3,1,1);
plot2d3(nx, x, style=2); 
plot2d(nx, x, style=-2);
xtitle("Tín hiệu đầu vào x(n)", "n", "Amplitude");
xgrid();

subplot(3,1,2);
plot2d3(ny, y_matrix, style=3);
plot2d(ny, y_matrix, style=-3);
xtitle("Tín hiệu ngõ ra y(n) = x(n)*h(n)", "n", "Amplitude");
xgrid();

subplot(3,1,3);
ymax = max(max(Ex), max(Ey)) + 2; 
a = gca();
a.data_bounds = [0, 0; 6, ymax];
plot2d3(nx, Ex, style=5); 
e1 = plot2d(nx, Ex, style=-5);
plot2d3(ny, Ey, style=6);
e2 = plot2d(ny, Ey, style=-6);
xtitle("Năng lượng tín hiệu E_x(n) và E_y(n)", "n", "Energy (|A|^2)");
hl = legend([e1.children(1), e2.children(1)], ["$E_x(n)$", "$E_y(n)$"], pos=1);
xgrid();
