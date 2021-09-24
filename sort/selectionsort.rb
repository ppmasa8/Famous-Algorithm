# array = [1,6,3,9,60,47,5]
class Array
  require 'benchmark'

  result = Benchmark.realtime do
    def select_sort
      tmp = self.dup
      res = []
      res.push tmp.delete_min until tmp.empty?
      res
    end
    def delete_min
      min_idx = find_index { |item| item == self.min }
      delete_at(min_idx)
    end
    array = Array.new(1000){ rand(10000) }
    p array
    p array.select_sort
  end
  puts "実行時間 #{result}s"
end
