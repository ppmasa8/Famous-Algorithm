# arr = [1,6,3,9,60,47,5]
def selection_sort(arr)
  newarr = []
  (arr.size).times do
    newarr << arr.min
    arr.delete(arr.min)
  end
  newarr
end