# array = [1,5,3,7,320]
class Array
  def insert_sort
    (1...self.size).each do |i|
      temp = self[i]
      num  = i - 1
      while num >= 0 && self[num] > temp
        self[num + 1] = self[num]
        num -= 1
      end
      self[num + 1] = temp
    end
    self
  end
end

array = Array.new(10){ rand(100) }
puts array.insert_sort