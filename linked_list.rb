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
p list
