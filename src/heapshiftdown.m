function [arr] = heapshiftdown(arr, start, final)
%HEAPSHIFTUP Shift the first element of the heap to an approporate index on
%       the list.
%   
root = start;
tmp = 0;

while ( (2*root) <= final ) % while root has a child
    child = 2*root; % left child of root
    swap = root; % child to swap with
    if arr(swap) < arr(child)
        swap = child;
    end
    % if a right child exists, and that child is greater:
    if (((child+1) <= final) && (arr(swap) < arr(child+1)))
        swap = child + 1;
    end
    if swap == root % root holds largest element
        return
    else % repeat and continue shifting children down
        tmp = arr(root); % swap
        arr(root) = arr(swap);
        arr(swap) = tmp;
        root = swap;
    end
end
end