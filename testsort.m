function [time] = testsort(func, array)
%TESTSORT Test a sorting algorithm
%   times a sorting algorithm on an array, returning the time
tic()
sorted = func(array)
time = toc()
end

