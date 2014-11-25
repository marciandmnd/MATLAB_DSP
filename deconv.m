% file: deconv.m 
% by: Marcian Diamond;
% description:  Function deconv(y, h); deconvolve finite-length Matlab sequence 
%               object, y, given impulse response sequence object, h, returning 
%               sequence object, x.

function x = deconv(y,h)
%index variables
i = 0;
j = 0;

%output and impulse response sequence data variables
yData = getData(y);
hData = getData(h);

%calculate offset of x[n]
offset = getOffset(y) - getOffset(h);

H = zeros(length(yData),length(yData));

%fill impulse response matrix
for i = 1:length(yData)
    for j = 1:length(yData)
        if (j > length(hData) && j + i - 1 <= length(yData))    
            H(i,j+i-1) = 0;
        elseif j + i -1  <= length(yData)
            H(i,j+i-1) = hData(j);
        end
    end
end

%input sequence calculation
input = yData * inv(H);

%calculate and correct length of x[n]
xVectorLength = abs(length(yData)-length(hData)) + 1;
deleteIndices = [xVectorLength + 1: length(input)];
input(deleteIndices) = [];
x=sequence(input,offset);

return