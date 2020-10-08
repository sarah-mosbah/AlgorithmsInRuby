def bubble_sort(array)
    swaped=true
    i=0
    while swaped
        swaped=false
        (0...array.length-i-1).each do |ele|
            if array[ele] > array [ele+1]
                array[ele], array[ele+1]= array[ele+1], array[ele]
                swaped=true
            end
        end
      i+=1
    end
  array
end