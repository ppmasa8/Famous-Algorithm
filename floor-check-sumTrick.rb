def check_sum_trick(arr)
  temp = push_sum(arr)
  ## Here is to generate error.
  temp == arr[-1]
end

def push_sum(arr)
  tmp, sum = arr, 0
  arr.each.with_index(1) do |elem, i|
    sum += elem * i
  end
  tmp << sum
  tmp.flatten!
  return tmp[-1]
end

arr = [4,5,6,5,7]
p arr
p check_sum_trick(arr)
