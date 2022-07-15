class Array
  require 'benchmark'

  result = Benchmark.realtime do
    def quick_sort
      return self if size <= 1
      pivot = pop
      smaller, bigger = partition{|n| n < pivot}
      push pivot
      smaller.quick_sort + [pivot] + bigger.quick_sort
    end
    array = Array.new(1000){ rand(10000) }
    p array
    p array.quick_sort
  end
  puts "実行時間 #{result}s"
end
