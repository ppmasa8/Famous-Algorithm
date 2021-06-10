# array = [1,4,2,5,30]
class Array
  def bubble_sort
    array_size = self.size - 1
    while array_size > 1
      (0..array_size-1).each do |i|
        if self[i] > self[i+1]
          array_freeze = self[i+1]
          self[i+1] = self[i]
          self[i] = array_freeze
        end
      end
      array_size-=1
    end
    self
  end
end

array = Array.new(10){ rand(100) }
puts array.bubble_sort