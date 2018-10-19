function [sorted] = bogosort(arr)
%BOGOSORT sort an array in descending order using bogosort
sorted = arr;
while not(isminsorted(sorted))
    sorted = arr(randperm(length(arr)));
end

end
