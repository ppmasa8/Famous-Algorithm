# array = [1,6,3,9,60,47,5]
class Array
  require 'benchmark'

  result = Benchmark.realtime do
    def selection_sort
      new_array = []
      (self.size).times do
        new_array << self.min
        self.delete(self.min)
      end
      new_array
    end
    array = Array.new(1000){ rand(10000) }
    p array
    p array.selection_sort
  end
  puts "実行時間 #{result}s"
end
