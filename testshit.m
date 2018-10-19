% a1 = 1:6
% a2 = 2:2:8
% 
% merge(a1, a2)
clear;
clc;

% a1 = int64(randi(100, 1, 5))
% isminsorted(a1)
% 
% a2 = mergesort(a1)
% a2 = bubblesort(a1)
% a2 = bogosort(a1)
% a2 = quantum_bogosort(a1)
% a2 = countingsort(a1, max(a1))
% a2 = heapsort(a1)
% a2 = insertionsort(a1)
% a2 = quicksort(a1)
% 
% isminsorted(a2)

repeats = 10

% getTimes(@quicksort, 1, 2000)
times = getTimes(@bubblesort, 1, 4, repeats)
loglog(10.^[1:length(times)], times, '-s', 'DisplayName', 'Bubble Sort')
hold('on')

times = getTimes(@insertionsort, 1, 4, repeats)
loglog(10.^[1:length(times)], times, '-s', 'DisplayName', 'Insertion Sort')

times = getTimes(@mergesort, 1, 6, repeats)
loglog(10.^[1:length(times)], times, '-s', 'DisplayName', 'Merge Sort')

times = getTimes(@quicksort, 1, 6, repeats)
loglog(10.^[1:length(times)], times,'-s', 'DisplayName', 'Quick Sort')

times = getTimes(@heapsort, 1, 6, repeats)
loglog(10.^[1:length(times)], times,'-s', 'DisplayName', 'Heap Sort')

times = getTimes(@countingsort, 1, 6, repeats, 1000000)
loglog(10.^[1:length(times)], times,'-s', 'DisplayName', 'Counting Sort, k=1,000,000')

times = getTimes(@countingsort, 1, 6, repeats, 100000)
loglog(10.^[1:length(times)], times,'-s', 'DisplayName', 'Counting Sort, k=100,000')

times = getTimes(@countingsort, 1, 6, repeats, 1000)
loglog(10.^[1:length(times)], times,'-s', 'DisplayName', 'Counting Sort, k=1,000')

times = getTimes(@countingsort, 1, 6, repeats, 100)
loglog(10.^[1:length(times)], times,'-s', 'DisplayName', 'Counting Sort, k=100')

xlabel('Random Array Size')
ylabel('Time (s)')
legend('location','eastoutside')
title({'Effect of Array Size on Computation Time', 'for different Sorting Algorithms'})
grid('on')

