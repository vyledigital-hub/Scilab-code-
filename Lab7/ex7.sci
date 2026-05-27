function y = linear_conv_fft(x, h)
    N1 = length(x);
    N2 = length(h);
    L = N1 + N2 - 1;

    x_pad = [x, zeros(1, L - N1)];
    h_pad = [h, zeros(1, L - N2)];

    Y = fft(x_pad) .* fft(h_pad);
    y = ifft(Y);
endfunction

x = rand(1, 5);
h = rand(1, 4);

y_fft = linear_conv_fft(x, h);
y_conv = conv(x, h);

disp("Tích chập tuyến tính dùng FFT:"); disp(y_fft);
disp("Tích chập tuyến tính dùng lệnh conv:"); disp(y_conv);
