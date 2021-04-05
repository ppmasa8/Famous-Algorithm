# arr = [1,5,3,7,320]
def insert_sort(arr)
  newarr = []
  arr.each do |a|
    newarr << a
    newarr.sort!
  end
  newarr
end