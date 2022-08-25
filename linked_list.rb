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

  def preprend(value)
    node = Node.new
    node.value = value
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next = @head
      @head = node
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
list.append(4)
p list
