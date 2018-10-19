function [arr] = quicksort(arr, low, high)
%QUICKSORT sorts an array using the quicksort algorithm
if nargin < 3
    low = 1;
    high = length(arr);
end
if low < high
    % move the pivot point to the proper location
    [arr, pidx] = quickpartition(arr, low, high);
    
    % run quicksort recursively around the pivot point
    arr = quicksort(arr, low, pidx-1);
    arr = quicksort(arr, pidx+1, high);
end


end

