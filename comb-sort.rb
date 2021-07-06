# array = [1,4,2,5,30]
class Array
  require 'benchmark'

  result = Benchmark.realtime do
    def comb_sort
      h = self.size * 10 / 13
      while (true)
        i, swaps = 0, 0
        while i+h < self.size
          if self[i] > self[i+h]
            swap(self, i, i+h)
            swaps+=1
          end
          i+=1
        end
        if h == 1
          if swaps == 0
            break
          end
        else
          h = h * 10 / 13
        end
      end
      self
    end

    def swap(arr, i, j)
      tmp = arr[i]
      arr[i] = arr[j]
      arr[j] = tmp
    end
    array = Array.new(1000){ rand(10000) }
    p array
    p array.comb_sort
  end
  puts "実行時間 #{result}s"
end
