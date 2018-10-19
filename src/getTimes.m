function [times] = getTimes(func, startlen, stoplen, repeat, maxrand)
if nargin < 5
    if nargin < 4
        repeat = 5;
    end
    maxrand = 2^53-1;
end
times = zeros([1, stoplen - startlen+1]);
time = 0;

for i = 1:repeat
    disp(i)
    for n = 10.^[startlen:stoplen]
        arr = int64(randi(maxrand, 1, n));
        if not(maxrand == 2^53-1)
            tic()
            arr = func(arr, maxrand);
            time = toc();
        else
            tic()
            arr = func(arr);
            time = toc();
        end
        if not(isminsorted(arr))
%             disp(arr)
            disp('ERROR ARR NOT SORTED')
        end
        times(log10(n)-startlen + 1) = times(log10(n)-startlen + 1) + time/repeat;
    end
end
end