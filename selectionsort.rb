# array = [1,6,3,9,60,47,5]
class Array
  def selection_sort
    new_array = []
    (self.size).times do
      new_array << self.min
      self.delete(self.min)
    end
    new_array
  end
end

array = Array.new(10){ rand(100) }
puts array.selection_sort