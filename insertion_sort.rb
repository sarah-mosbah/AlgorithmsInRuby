def insertion_sort(array)

    i=1

    while i < array.length
        current_element=array[i]
        j= i-1
        while j >-1 && current_element < array[j]
            array[j+1]=array[j]
            j-=1
        end

        array[j+1]=current_element
        i+=1
    end
    array
end


p insertion_sort([5,3,55,47,1,2,5,17,88,1025,44,4,5])