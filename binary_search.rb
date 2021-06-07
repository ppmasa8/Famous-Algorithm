# a is array,key is value.
def binary_search(a,key) 
  lo  = 0
  hi  = a.size - 1

  while lo <= hi
    mid = lo + (lo + hi) / 2
    if a[mid] == key
      return a[mid]
    elsif a[mid] < key
      lo = mid + 1
    else
      hi = mid - 1
    end
  end
end
