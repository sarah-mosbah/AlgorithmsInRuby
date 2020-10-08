def quick_sort(array)
    return array if array.length<1
    pivot=array.shift
    left=array.select {|ele| ele < pivot}
    right=array.select {|ele| ele > pivot}

    quick_sort(left) + [pivot]+ quick_sort(right)
end


p quick_sort([5,3,55,47,1,2,5,17,88,1025,44,4,5])