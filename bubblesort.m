function [sorted] = bubblesort(arr)
%BUBBLESORT Sorts an input array and returns sorted
tmp = 0;
for i = length(arr):-1:1 % {n, n-1, ..., 1}
    for j = 1:(i-1) % from the beginning to the last unsorted index
        if arr(j) > arr(j+1) % if the next element is larger
            tmp = arr(j); % swap
            arr(j) = arr(j+1);
            arr(j+1) = tmp;
        end
    end
end
sorted = arr;
end

