function [truth] = isminsorted(arr)
%ISSORTED checks if an array is sorted
%   checks for least-to-greatest sort pattern in array
%   returns truth of 'array is sorted'
truth = true;

for i = 1:(length(arr)-1)
    if arr(i) > arr(i+1)
        truth = false;
        break;
    end
end

end

