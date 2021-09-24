class Array
  require 'benchmark'

  result = Benchmark.realtime do
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
    array = Array.new(1000){ rand(10000) }
    p array
    p array.quick_sort
  end
  puts "実行時間 #{result}s"
end
