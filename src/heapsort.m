function [arr] = heapsort(arr)
%HEAPSORT Sorts an array using heapsort
tmp = 0;
count = length(arr);


initial = floor((count-1) / 2); % compute parent node location
for start =  initial:-1:0
    arr = heapshiftdown(arr, start+1, count);
end

final = count;
while final > 1
    % move the parent of the heap to the end
    tmp = arr(final); %swap
    arr(final) = arr(1);
    arr(1) = tmp;
 
    final = final - 1;
    arr = heapshiftdown(arr, 1, final);
end
end

