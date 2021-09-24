require 'benchmark'

result = Benchmark.realtime do
  def make_heap(array, parent, end_element)
    temp  = array[parent]
    child = 0

    while parent < (end_element + 1) / 2
      left_child  = (parent * 2) + 1
      right_child = left_child + 1

      if right_child <= end_element && array[right_child] > array[left_child]
        child = right_child
      else
        child = left_child
      end

      if temp >= array[child]
        break
      end

      array[parent] = array[child]
      parent = child
    end
    array[parent] = temp
  end

  def heap_sort(array)
    elements_num = array.size
    center       = (elements_num - 1) / 2
    while center >= 0
      make_heap(array, center, elements_num - 1)
      center -= 1
    end

    end_element = elements_num - 1
    while end_element > 0
      array[0], array[end_element] = array[end_element], array[0]
      make_heap(array, 0, end_element - 1)
      end_element -= 1
    end
    array
  end
  array = Array.new(1000){ rand(10000) }
  p array
  p heap_sort(array)
end
puts "実行時間 #{result}s"
