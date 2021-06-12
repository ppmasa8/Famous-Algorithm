def ubiquitous_binary_search(a,key)
  lo = 0
  hi = a.size - 1

  while hi - lo > 1
    mid = lo + (hi - lo) / 2

    if a[mid] <= key
      lo = mid
    else
      ho = mid
    end
  end

  if a[lo] == key
    lo
  elsif a[hi] == key
    hi
  else
    "value not found"
  end
end