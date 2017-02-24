require_relative 'node'
## available thru node is next and data
class LinkedList
  attr_accessor :head
  attr_accessor :tail
  #next value is a reference to an object
  # start with an empty LinkedList and then call Node.new -> data , next. 

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
    if @tail == nil
      return
    else
      delete(@tail)
    end
  end

  # This method prints out a representation of the list.
  def print
    result = ""
    while !@tail
      start = @head
      result << start
      start = start.next
    end
    return result.to_str
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    if @head == nil
      return
    else
      start = @head
      if start.next == node
        @tail = start
        return @tail
      else
        start = start.next
      end
    end
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
    if @head == nil
      return
    else
      @head = @head.next
    end
  end
end