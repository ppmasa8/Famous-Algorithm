# description
# 文字数が3文字になるまで、現在の文字列に追加の一文字を足して同じメソッドに突っ込む

# 行き止まりの表示を切り替えるboolean
@switch = false

def stack_dfs(patterns)
  stack = [""]
  until stack.empty?
    string = stack.pop

    patterns << string unless string.empty?

    if string.size == 3
      patterns << "<行き止まり>" if @switch
    else
      stack << string + "A"
      stack << string + "B"
      stack << string + "C"
    end
  end
end

patterns = []
stack_dfs(patterns)
p patterns