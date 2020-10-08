
require "byebug"

def merge_sort(array)

    return array if array.length==1
    mid_index= (array.length-1) / 2

    left_array= merge_sort(array[0..mid_index])
    right_array= merge_sort(array[mid_index+1..-1])

    nw_arr= merge(left_array,right_array)

    nw_arr
end

def merge(left_array, right_array)

    sorted_arr=[]

    until left_array.empty? || right_array.empty?
        if left_array[0] >= right_array[0] 
            sorted_arr << right_array[0]
            right_array.shift
        else
            sorted_arr << left_array[0]
            left_array.shift
        end
    end
    sorted_arr+left_array+ right_array
end




p merge_sort([10,11,25,30,1,2,40,7,888])
