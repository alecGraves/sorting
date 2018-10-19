function [sorted] = mergesort(array)
%MERGESORT Performs mergesort, returns sorted list
%   Sorts an array of integers into decending order using mergesort.
    la = length(array);
    if la < 3
        if la == 2
            if array(1) <= array(2)
                sorted = [array(1), array(2)];
            else
                sorted = [array(2), array(1)];
            end
        else % array length = 1
            sorted = array;
        end
    else
        m = int64(la/2);
        arr1 = mergesort(array(1:m-1));
        arr2 = mergesort(array(m:end));
        sorted = merge(arr1, arr2);
    end
end