function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    n = min(min(n1), min(n2)) : max(max(n1), max(n2));
    y1 = zeros(1, length(n)); y2 = y1;
    y1(find(n >= min(n1) & n <= max(n1))) = x1n;
    y2(find(n >= min(n2) & n <= max(n2))) = x2n;
    yn = y1 .* y2; 
    yorigin = 1 - min(n);
    
    clf(); plot2d3(n, yn); plot(n, yn, 'ko');
    xtitle("y(n) = x1(n) * x2(n)");
endfunction
