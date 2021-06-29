def return_palindrome(str)
  return "" if str.empty?

  head, tail = 0, 0
  i = 0
  while i < str.size
    len = [find_palindrome(str, i, i), find_palindrome(str, i, i+1)].max
    if tail - head < len
      head = i - (len - 1) / 2
      tail = i + len / 2
    end
    i += 1
  end
  str[head..tail]
end

def find_palindrome(str, left, right)
  while 0 <= left && right < str.size && str[left] == str[right]
    left  -= 1
    right += 1
  end
  right - left - 1
end

str = (0...8).map{(97 + rand(26)).chr}.join
puts "生成された文字列（8文字）      : #{str}"
puts "その中に含まれる部分回文文字列 : #{return_palindrome(str)}"
