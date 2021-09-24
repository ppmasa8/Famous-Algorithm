# array = [1,5,3,7,320]
class Array
  require 'benchmark'

  result = Benchmark.realtime do
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
    array = Array.new(1000){ rand(10000) }
    p array
    p array.insert_sort
  end
  puts "実行時間 #{result}s"
end
