# description
# 文字数が3文字になるまで、現在の文字列に追加の一文字を足して同じメソッドに突っ込む

# 行き止まりの表示を切り替えるboolean
@switch = false

def recursive_dfs(patterns, string="")
  patterns << string unless string.empty?

  if string.size == 3
    patterns << "<行き止まり>" if @switch
    return
  end

  recursive_dfs(patterns, string+"A")
  recursive_dfs(patterns, string+"B")
  recursive_dfs(patterns, string+"C")
  recursive_dfs(patterns, string+"D")
end

patterns = []
recursive_dfs(patterns)
p patterns