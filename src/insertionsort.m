function [arr] = insertionsort(arr)
%INSERTIONSORT Sorts an array by moving the largest element
% Repeatedly finds and moves the largest element to the end until the array
% is sorted.
len = length(arr);
final = len;
tmp = 0;
largest = 0;
largest_idx = 1;

for i = 1:len
    largest = arr(1);
    largest_idx = 1;
    for j = 2:final
        tmp = arr(j);
        if tmp >= largest
            largest = tmp;
            largest_idx = j;
        end
    end
    tmp = arr(final); % swap
    arr(final) = arr(largest_idx);
    arr(largest_idx) = tmp;
    
    final = final-1; % decrease end location
end

end

