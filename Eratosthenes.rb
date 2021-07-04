require 'benchmark'

result = Benchmark.realtime do
  def eratosthenes(num)
    nums, sqrt = (2..num).to_a, Math.sqrt(num).floor
    primes = []
    while target = nums.shift
      primes << target
      break if target > sqrt
      nums.delete_if { |num| num % target == 0 }
    end
    primes.concat(nums)
  end
  puts eratosthenes(1000000)
end
puts "実行時間 #{result}s"
