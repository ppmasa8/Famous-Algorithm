# array = [1,4,2,5,30]
def bubble_sort(array)
  array_size = array.size - 1
  while array_size > 1
    (0..array_size-1).each do |i|
      if array[i] > array[i+1]
        array_freeze = array[i+1]
        array[i+1] = array[i]
        array[i] = array_freeze
      end
    end
    array_size-=1
  end
  array
end