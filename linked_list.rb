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
    if index >= size || index.negative?
      'Invalid index. Must be smaller than the size of the list but greater than zero.'
    else
      each do |node|
        return node if current_index == index

        current_index += 1
      end
    end
  end

  def pop
    if @head.nil?
      'Cannot use #pop. The linked list is empty'
    elsif size == 1
      @head = nil
      @tail = nil
    else
      @tail = at(size - 2)
      @tail.next_node = nil
    end
  end

  def each
    return nil if @head.nil?

    node = @head
    until node.nil?
      yield node
      node = node.next_node
    end
  end

  def contains?(value)
    each do |node|
      return true if node.value == value
    end
    false
  end

  def find(value)
    current_index = 0
    each do |node|
      return current_index if node.value == value

      current_index += 1
    end
    nil
  end

  def to_s
    node_values = []
    each do |node|
      node_values << node.value
    end
    string = node_values.join(' -> ')
    "#{string} -> nil"
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
puts list
