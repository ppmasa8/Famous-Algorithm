class Array
  def quick_sort
    return self if self.size < 2

    pivot = self.shift

    big   = []
    small = []
    self.each do |num|
      if num < pivot
        small << num
      else
        big << num
      end
    end

    small.quick_sort + [pivot] + big.quick_sort
  end
end

array = Array.new(10){ rand(100) }
puts array.quick_sort