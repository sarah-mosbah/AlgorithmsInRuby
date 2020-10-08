#Time O(n^2), Space O(1) because we didn't use arrays

def selection_sort(array)

    i=0

    while i < array.length

        min_index=i
        (i...array.length).each do |j|
            min_index=j if array[j] < array[min_index]
        end

        array[min_index], array[i]= array[i], array[min_index]
        i+=1
    end
    array
end


p selection_sort([5,3,55,47,1,2,5,17,88,1025,44,4,5])
