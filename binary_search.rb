

def binary_search(array, target)
     return false if array.empty?

     mid_index= array.length / 2
     left_arr= array[0...mid_index]
     right_arr=array[mid_index+1..-1]

     if array[mid_index] > target
        return binary_search(left_arr, target)
     elsif array[mid_index] < target
        return binary_search(right_arr, target)
     else
        return true
     end
end




def binary_search_with_index(array, target, lo=0, high=array.length-1)
    return -1 if lo>high

    mid_index= ((high+lo) / 2).ceil 
    if array[mid_index] > target
       return binary_search_with_index(array, target,lo, mid_index-1)
    elsif array[mid_index] < target
       return binary_search_with_index(array, target, mid_index+1, high)
    else
       return mid_index
    end
end


p binary_search_with_index([1,2,4,8,99,1025], 99)