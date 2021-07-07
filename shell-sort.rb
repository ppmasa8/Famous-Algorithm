class Array
  require 'benchmark'

  result = Benchmark.realtime do
    def shell_sort
      h = self.size / 2
      while h > 0
        i = h
        while i < self.size
          j = i
          while j >= h && self[j-h] > self[j]
            tmp = self[j]
            self[j] = self[j-h]
            self[j-h] = tmp
            j -= 1
          end
          i += 1
        end
        h /= 2
      end
    end
    array = Array.new(1000){ rand(10000) }
    p array
    p array.shell_sort
  end
  puts "実行時間 #{result}s"
end
