# array = [1,5,3,7,320]
class Array
  def insert_sort
    new_array = []
    self.each do |ai|
      new_array << ai
      new_array.sort!
    end
    new_array
  end
end

array = Array.new(10){ rand(100) }
puts array.insert_sort