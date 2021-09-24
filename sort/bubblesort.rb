# array = [1,4,2,5,30]
class Array
  require 'benchmark'

  result = Benchmark.realtime do
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
    array = Array.new(1000){ rand(10000) }
    p array
    p array.bubble_sort
  end
  puts "実行時間 #{result}s"
end
