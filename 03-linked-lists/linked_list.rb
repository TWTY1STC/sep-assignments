require_relative 'node'
## available thru node is next and data
class LinkedList
  attr_accessor :head
  attr_accessor :tail
  #next value is a reference to an object
  # start with an empty LinkedList and then call Node.new -> data , next. 
  #def initialize(head, tail)
  #  @head = head
  #  @tail = tail
  #end
  
  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if node.next == nil
      @tail = node
      node.next = nil
    else
      node.next
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    
    if node.next = nil
      delete(node)
    end
  end

  # This method prints out a representation of the list.
  def print
    result = String.new()
    node = Node.new(@data)
    while !node.next == nil
      result << node.next.to_s
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    if @head == nil
      @head = node
      @tail = node
    else
      temp = @head
      @head = node
      node.next = temp
    end
    return @head
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    temp = @head
    @head = node.next
    return temp
    # need to keep track of node.head
    #
    #node.delete(head)
    #head = node[]
  end
end