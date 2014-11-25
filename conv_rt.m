% file: conv_rt.m 
% by: Marcian Diamond;
% description:  Function conv_rt(x, h); Convolve in real-time two finite-length 
%               Matlab row vectors, x and h returning sequence object, y, via
%               circular buffer method.

function y = conv_rt(x,h)

buffer = zeros(1,length(h));
y = zeros(1,length(h) + length(x) - 1);

for i = 1:length(y)
    %shift buffer contents right
    if i < length(buffer) && i > 1
        for j = i:-1:2
            buffer(j) = buffer(j-1);
        end
    else
        for j = length(buffer):-1:2
            buffer(j) = buffer(j-1); 
        end
    end
    
    %insert next element of input sequence into buffer
    if(i <= length(x))
        buffer(1) = x(i);
    else
        buffer(1) = 0;
    end
    
    %obtain convolution sum for y(i)
    for k = 1:length(buffer)
        y(i) = y(i) + h(k)* buffer(k);   
    end    
end
return