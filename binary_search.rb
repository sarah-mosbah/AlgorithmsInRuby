

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


p binary_search([1,2,4,8,99,1025], 80)