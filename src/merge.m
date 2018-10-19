function [sorted] = merge(arr1, arr2)
% COMBINE Combines two sorted lists in such a way that the result is also
% sorted.
% Uncomment display to visualize the calculation
% disp(arr1)
% disp(arr2)
s1 = length(arr1);
s2 = length(arr2);
s3 = s1+s2; % merged output size
sorted = zeros([1, s3], 'int64');
k = 1; % sorted array index
js = 1; % j start
for i = 1:s1
    for j = js:s2
        if arr2(j) < arr1(i)
            sorted(k) = arr2(j);
            k = k+1;
            js = js+1; % start from nextarr2 position
        elseif arr1(i) <= arr2(j)
            sorted(k) = arr1(i);
            k = k+1;
            break;
        end
    end
end
if js <= s2 % if arr2 remaining
    for j = js:s2
        sorted(k) = arr2(j);
        k = k+1;
    end
elseif k <= s3 % if arr1 remaining
    for i = s1-(s3-k):s1
%         disp(i)
        sorted(k) = arr1(i);
        k = k+1;
    end
end
end