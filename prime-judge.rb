# Array [4,79,9,2,57]etc...

def prime_judge(array)
  prime_list = []
# 一つずつ数字を見ていく
  array.each do |num|
    prime = true
    (2...Math.sqrt(num)).each do |i|
       prime = false if num%i == 0
    end
    prime_list << num if prime
  end
  return prime_list
end

