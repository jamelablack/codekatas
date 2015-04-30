#4/11
# With linked lists, the idea is that the head and tails can be reassigned as new nodes are added
# Nodes rather than referencing themselves, referece the next node.
# Although there conceptually isn't anything in Ruby that represents linked lists (there are many gems that add this
# functionality), linked lists prove to be adventageous over arrays because its not very simple to insert an element into
# the middle of an array.


class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end

end


class List
  include Enumerable

  def initialize(nodes=[])
    @head = @tail = nil

    return if nodes.empty?

    @head = nodes.first
    @tail = nodes.last

    nodes.each_with_index do |node, idx|
      node.next = nodes[idx] unless idx == nodes.last
    end
  end

  def empty?
    @head.nil? && @tail.nil?
  end

  def to_s
    "#{self.head} , #{self.tail}"
  end

  def append(node)
    if empty?
      @tail = @head = node
    else
      @tail.next = node
      @tail  = node
    end
  end
  alias_method :<< ,:append


  def prepend(node)
    if empty?
      @head = @tail = node
    else
      @head = node.next
      @head = node
    end
  end

  def display
    # current_node = @head
    # loop do
    #   puts current_node.value
    #   if current_node == @tail
    #     break
    #   else
    #     current_node = current_node.next
    #   end
    # end
    each {|node| puts node.value }
  end


  def select
    List.new(super)

    # new_list = List.new
    # # current_node = @head
    # # loop do
    # #   new_list.append(current_node) if yeild(current_node)
    # #   if current_node == @tail
    # #     break
    # #   else
    # #     current_node = current_node.next
    # #   end
    # # end
    # each do |node|
    #   new_list << node  if yield(node)
    # new_list
  end

  def each
    current_node = @head
    loop do
      yield(current_node)
      if current_node == @tail
        break
      else
        current_node = current_node.next
      end
    end
  end
end





#Output
node1  = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)

list = List.new

list << node1
list << node2
list.prepend(node0)

list.display

new_list = list.select {|node| node.value.odd? }
puts "New List"
puts new_list.class
new_list.display
