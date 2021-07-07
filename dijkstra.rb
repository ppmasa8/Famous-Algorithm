def dijkstra(graph, start)
  h = graph.map {|x| [x[0], x[1].keys]}.to_h

  shortest = Hash.new(Float::INFINITY)
  pred = {}
  done = h.keys.map {|node| [node, false]}.to_h

  shortest[start] = 0

  while true
    # スタート地点から最短のノードを探す
    u = nil
    h.each_key.reject {|node| done[node]}.each do |node|
      u = node if !u || shortest[node] < shortest[u]
    end
    break unless u
    done[u] = true

    h[u].each do |v|
      a = shortest[u] + graph[u][v]
      if a < shortest[v]
        shortest[v] = a
        pred[v]     = u
      end
    end
  end
  [shortest, pred]
end

if __FILE__ == $0
  graph = {s: {t: 6, y: 4}, t: {x: 3, y: 2},
           x: {z: 4}, y: {z: 3, t: 1, x: 9}, z: {s: 7, x: 5}}
  p dijkstra(graph, :s)
end
