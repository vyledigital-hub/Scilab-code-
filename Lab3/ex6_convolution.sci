function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    yorigin = xorigin + horigin - 1;
    
    clf();
    ny = (1:length(yn)) - yorigin;
    plot2d3(ny, yn); plot(ny, yn, 'go');
    xtitle("Convolution y(n) = x(n) * h(n)");
endfunction
