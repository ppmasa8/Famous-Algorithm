# Array [4,79,9,2,57]etc...
class Array
  def prime_judge
    prime_list = []
  # 一つずつ数字を見ていく
    self.each do |num|
      prime = true
      (2..Math.sqrt(num)).each do |i|
         prime = false if num%i == 0
      end
      prime_list << num if prime
    end

  # 1or0は除外
    prime_list.delete(1) if prime_list.include?(1)
    prime_list.delete(0) if prime_list.include?(0)

    return prime_list
  end
end

array = Array.new(10){ rand(100) }
puts array.prime_judge
