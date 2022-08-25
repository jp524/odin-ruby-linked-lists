# frozen_string_literal: false

# Contains the linked list starting from head to tail nodes
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
    else
      @tail.next_node = node
    end
    @tail = node
  end

  def preprend(value)
    node = Node.new
    node.value = value
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def size
    ObjectSpace.each_object(Node).count
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def at(index)
    current_index = 0
    node = @head
    if index >= size
      'Invalid index. Must be smaller than the size of the list.'
    else
      until current_index == index
        current_index += 1
        node = node.next_node
      end
      node.value
    end
  end
end

# Defines each node of the linked list
class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end

list = LinkedList.new
list.append(4)
list.preprend(3)
list.preprend(2)
list.preprend(1)
list.preprend(0)
# p list.size
# p list.head
# p list.tail
p list.at(1)
