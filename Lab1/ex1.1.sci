x = 1:4;
v1 = x + 1;
disp(v1, "Ket qua vector 1:");

y = 5:8;
v2 = x .* y; 
disp(v2, "Ket qua vector 2:");

x_linear = linspace(0, %pi, 10); 
v3 = sin(x_linear);
disp(v3, "Ket qua vector 3:");
