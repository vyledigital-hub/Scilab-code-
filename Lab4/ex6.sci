x = [1, 2, -3, 2, 1];
h = [1, 0, -1];
N1 = length(x);
N2 = length(h);
L = N1 + N2 - 1;

H_mat = zeros(L, N1);
for i = 1:N1
    H_mat(i:i+N2-1, i) = h';
end
y_matrix = H_mat * x';

E_x = sum(x.^2);
E_y = sum(y_matrix.^2);

clf();
subplot(3,1,1);
plot2d3(0:N1-1, x); title("Input Signal x(n)");
xtitle("", "n", "x(n)");

subplot(3,1,2);
plot2d3(0:L-1, y_matrix); title("Linear Convolution y(n) (Matrix Method)");
xtitle("", "n", "y(n)");

subplot(3,1,3);

plot(0:L-1, cumsum(y_matrix.^2), 'r-o'); title("Energy of y(n)");
xtitle("", "n", "Cumulative Energy");

printf("Năng lượng tín hiệu x: %f\n", E_x);
printf("Năng lượng tín hiệu y: %f\n", E_y);
