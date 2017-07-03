def sorted_concat(array1,array2)
  array2.each { |array| array1 << array }

  quicksort(array1, 0, array1.count)

  array1
  

end

def quicksort(array, low, high) 

    if low >= high
        return
    end

    pivot = array[low]

    left = low + 1
    right = low + 1

    while right < high 
       if array[right] <= array[low]
         swap(array,left,right)
         left = left + 1
       end
     right = right + 1
    end
    
    swap(array, low, left - 1)

    quicksort(array, low, left - 1)
    quicksort(array, left, high)

end

def swap(array, x, y)
  
  temp = array[x]
  array[x] = array[y]
  array[y] = temp
end

arr = sorted_concat([4,6,8],[7,5,3])
puts arr
