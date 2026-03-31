x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];
N = 5;

H_circ = zeros(N, N);
temp_h = [h(1) h($:-1:2)];
for i = 1:N

    H_circ(i, :) = [h(N-i+2:N), h(1:N-i+1)]; 
end

H_custom = [ 1  1 -1 -1  0;
             0  1  1 -1 -1;
            -1  0  1  1 -1;
            -1 -1  0  1  1;
             1 -1 -1  0  1 ];
y_circular = H_custom * x';


E_x = sum(x.^2);
E_yc = sum(y_circular.^2);


clf();
subplot(3,1,1);
plot2d3(0:N-1, x); title("Input x(n)");

subplot(3,1,2);
plot2d3(0:N-1, y_circular); title("Circular Convolution y(n)");

subplot(3,1,3);
plot(0:N-1, cumsum(y_circular.^2), 'g-s'); title("Energy of Circular y(n)");

disp("Kết quả chập vòng y(n):");
disp(y_circular');
