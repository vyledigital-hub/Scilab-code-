function y = circ_conv_fft(x, h)
    X = fft(x);
    H = fft(h);
    Y = X .* H;
    y = ifft(Y);
endfunction

function y = circ_conv_direct(x, h)
    N = length(x);
    y = zeros(1, N);
    for n = 0:(N-1)
        for k = 0:(N-1)
            idx = pmodulo(n - k, N);
            y(n+1) = y(n+1) + x(k+1) * h(idx+1);
        end
    end
endfunction

x = [1, 2, 1, -1];
h = [0, 1/3, -1/3, 1/3];

y1 = circ_conv_fft(x, h);
y2 = circ_conv_direct(x, h);

disp("Kết quả bằng FFT:"); disp(y1);
disp("Kết quả trực tiếp:"); disp(y2);
