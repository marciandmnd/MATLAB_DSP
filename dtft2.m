% file: dtft2.m 
% by: Marcian Diamond; 
%
% description:  DTFT2 Evaluate the DTFT of Matlab sequence object, x, at 
%               frequencies given by array w. Return values are a structure 
%               with y.real (real part) and y.imag (imaginary part)

function y = dtft2(x, w)

X = zeros(1, length(w));
xn = getData(x);
n = [getOffset(x):length(xn) + getOffset(x) - 1]';
Q = zeros(length(xn), length(X));
Q = n * w;
y.real = xn * cos(Q);    
xImag = xn * -sin(Q);
y.imag = xImag;

for i = 1: length(y.imag)
    if y.imag(i) < 1e-10 && y.imag(i)> -1e-10
        y.imag(i) = 0;
    end
end

return