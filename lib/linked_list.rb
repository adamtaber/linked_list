require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def create_node(value=nil, next_node=nil)
    Node.new(value, next_node)
  end

  def tail(node=@head)
    if node.next_node == nil
      node
    else
      tail(node.next_node)
    end
  end

  def append(value)
    if @head == nil
      self.head = create_node(value)
    else
      tail.next_node = create_node(value)
    end
  end

  def prepend(value)
    if @head == nil
      self.head = create_node(value)
    else
      self.head = create_node(value, head)
    end
  end

  def size(node=head, count=1)
    if node.value == nil
      0
    elsif node.next_node == nil
      count
    else
      size(node.next_node, count+1)
    end
  end

  def at(index, node=head, count=0)
    if index >= self.size
      puts "that index is nil"
    elsif count != index
      at(index, node.next_node, count+1)
    elsif count == index
      node.value
    end
  end
  
  def pop(node=head, count=0)
    if count == (self.size - 2)
      node.next_node = nil
    else
      pop(node.next_node, count+1)
    end
  end

  def contains?(value, node=head)
    if node.value == value
      true
    elsif node.next_node == nil
      false
    else
      contains?(value, node.next_node)
    end
  end

  def find(value, node=head, count=0)
    if contains?(value) == false
      nil
    elsif node.value == value
      count
    else
      find(value, node.next_node, count+1)
    end
  end

  def to_s(node=head, arr=[])
    if node.next_node == nil
      arr << "( #{node.value} ) -> nil"
      puts arr.join("")
    else
      arr << "( #{node.value} ) -> "
      to_s(node.next_node, arr)
    end
  end

  def insert_at(value, index, node=head, count=0)
    puts "test"
    if index >= self.size
      puts "invalid value"
    elsif index == 0
      prepend(value)
    elsif count != (index-1)
      insert_at(value, index, node.next_node, count+1)
    elsif count == (index-1)
      node.next_node = create_node(value, node.next_node)
    end
  end

  def remove_at(index, node=head, count=0)
    if index >= self.size
      puts "invalid index"
    elsif index == 0
      self.head = node.next_node
    elsif count != (index-1)
      remove_at(index, node.next_node, count+1)
    elsif count == (index-1)
      node.next_node = node.next_node.next_node
    end
  end    
end