# array = [1,5,3,7,320]
def insert_sort(array)
  new_array = []
  array.each do |ai|
    new_array << ai
    new_array.sort!
  end
  new_array
end