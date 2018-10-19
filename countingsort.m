function [sorted] = countingsort(arr, k)
%COUNTINGSORT Sorts an array using countingsort
%   Counts the occurances of each key in arr, uses this to sort.
%   All elents of arr should be in the range [0, k)
%   This implementation is designed to work on integer lists for which an
%       array of length k can fit in memory.
if nargin < 2
    k = 1000000;
end

% temporary variable to hold the count for every key in arr
count = zeros([1, k], 'int64');
sorted = zeros([1, length(arr)], 'int64');

% compute histogram of key frequencies
for x = arr % every key in the array
    count(x) = count(x) + 1;
end

% calculate the starting index for each key:
total = 0;
for i = 1:k
    oldcount = count(i);
    count(i) = total;
    total = total + oldcount;
end

for x = arr
    sorted(count(x)+1) = x;
    count(x) = count(x) + 1;
end

end
