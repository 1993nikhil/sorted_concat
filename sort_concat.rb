class Array
  
 def sorted_concat(array2)
      array2.each { |array| self << array }
      quicksort(self, 0, self.count)
      self
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

end

arr = [4,6,8].sorted_concat([7,5,3])
puts arr
