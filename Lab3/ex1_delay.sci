function [yn, yorigin] = delay(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;

    clf();
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    subplot(2,1,1); plot2d3(nx, xn); plot(nx, xn, 'ro'); xtitle("x(n)");
    subplot(2,1,2); plot2d3(ny, yn); plot(ny, yn, 'bo'); xtitle("y(n) = x(n-k)");
endfunction
