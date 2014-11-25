% file: dtft.m 
% by: Marcian Diamond;
%
% description:  DTFT Evaluate the DTFT of Matlab sequence object, x, at
%               radial frequencies given by double array w. Return a double array, y.

function y = dtft(x, w) 
    X = zeros(1, length(w));
    xn = getData(x);
    n = [getOffset(x):length(xn) + getOffset(x)-1]';
    Q = zeros(length(xn), length(X));
    Q = n * w;
    X = xn * exp(-j*Q);
    y = X;
return
