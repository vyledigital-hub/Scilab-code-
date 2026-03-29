function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1); 
    yorigin = length(xn) - xorigin + 1;
    
    clf();
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    subplot(2,1,1); plot2d3(nx, xn); plot(nx, xn, 'ro'); xtitle("x(n)");
    subplot(2,1,2); plot2d3(ny, yn); plot(ny, yn, 'bo'); xtitle("y(n) = x(-n)");
endfunction
