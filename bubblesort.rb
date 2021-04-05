# arr = [1,4,2,5,30]
def bubble_sort(arr)
  as = arr.size - 1
  while as > 1
    (0..as-1).each do |i|
      if arr[i] > arr[i+1]
        s = arr[i+1]
        arr[i+1] = arr[i]
        arr[i] = s
      end
    end
    as-=1
  end
  arr
end