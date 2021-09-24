# array = [1,5,3,7,320]
require 'benchmark'

result = Benchmark.realtime do
  def merge_sort(array)
    return array if array.size == 1
    return [array.min, array.max] if array.size == 2

    half = array.size / 2
    left_boundary  = merge_sort(array[0..half-1])
    right_boundary = merge_sort(array[half..-1])

    l_shift = left_boundary.shift
    r_shift = right_boundary.shift

    Array.new(array.size) do
      if l_shift < r_shift
        l_shift.tap{ l_shift = left_boundary.shift || right_boundary[-1] || r_shift }
      else
        r_shift.tap{ r_shift = right_boundary.shift || left_boundary[-1] || l_shift }
      end
    end
  end
  array = Array.new(1000){ rand(10000) }
  p array
  p merge_sort(array)
end
puts "実行時間 #{result}s"
