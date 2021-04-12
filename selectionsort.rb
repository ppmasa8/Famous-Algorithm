# array = [1,6,3,9,60,47,5]
def selection_sort(array)
  new_array = []
  (array.size).times do
    new_array << array.min
    array.delete(array.min)
  end
  new_array
end

array = Array.new(10){ rand(100) }
puts selection_sort(array)