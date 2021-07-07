def check_sum_trick(arr)
  tmp = push_sum(arr)
  ## Here is to generate error.
  bug(arr)
  arr.sum == tmp[-2, 2]
end

def push_sum(arr)
  tmp, sum = arr, 0
  arr.each.with_index(1) do |elem, i|
    sum += elem * i
  end
  tmp << sum.to_a
  tmp.flatten!
end

def bug(arr)
  
end

arr = [4,5,6,5,7]
p arr
p check_sum_trick(arr)
