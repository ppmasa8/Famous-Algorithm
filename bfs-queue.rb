# description
# 文字数が3文字になるまで、現在の文字列に追加の一文字を足して同じメソッドに突っ込む

# 行き止まりの表示を切り替えるboolean
@switch = false

def bfs_queue(patterns)
  queue = [""]
  
  until queue.empty?
    string = queue.shift

    patterns << string unless string.empty?

    if string.size == 3
      patterns << "<行き止まり>" if @switch
    else
     queue << string + "A"
     queue << string + "B"
     queue << string + "C"
    end
  end
end

patterns = []
bfs_queue(patterns)
p patterns
