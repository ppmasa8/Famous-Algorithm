class LinkedListNode
  attr_accessor :next_node, :value

  def initialize(value, next_node = nil)
    @next_node = next_node
    @value     = value
  end
end

def print_values(list_node)
  if list_node
    puts "#{list_node.value}"
    print_values(list_node.next_node)
  else
    puts "nil\n"
    return
  end
end

def infinite_loop?(list)
  tortoise = list.next_node
  hare     = list.next_node

  while !hare.nil?
    hare = hare.next_node
    return false if hare.nil?

    hare     = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end

  return false
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(45, node3)
node5 = LinkedListNode.new(21, node4)

puts infinite_loop?(node5)
node1.next_node = node5
puts infinite_loop?(node5)
