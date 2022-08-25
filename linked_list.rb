class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new
    node.value = value
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end
end

class Node
  attr_accessor :value

  def initialize
    @value = nil
    @next_node = nil
  end
end

list = LinkedList.new
p list.append(4)
