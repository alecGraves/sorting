function [arr, idx] = quickpartition(arr, low, high)
%QUICKPARTITION moves the pivot element to the correct position, places
%smaller elements to the left of pivot, and places larger elements to the
%right of pivot.
%   Detailed explanation goes here
i = low-1; % index of small element
pivot = arr(high); % pivot
tmp = 0;

for j = low:(high-1)
    % if current element is smaller than the pivot
    if arr(j) <= pivot
        % incriment smaller element index
        i = i+1;
        tmp = arr(i); % swap
        arr(i) = arr(j);
        arr(j) = tmp;
    end
end

i = i+1;
tmp = arr(i);
arr(i) = arr(high);
arr(high) = tmp;
idx = i;
end

