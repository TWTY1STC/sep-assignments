require_relative 'node'
## available thru node is next and data
class LinkedList
  attr_accessor :head
  attr_accessor :tail
  #next value is a reference to an object
  # start with an empty LinkedList and then call Node.new -> data , next. 

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if @head == nil 
      @head = node
      @tail = node
    #one item
    elsif @head == @tail
      @head.next = node
      @tail = node
    #multiple
    else
      temp = @tail
      temp.next = node
      @tail = node
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    temp = @head.next
    while !temp=@tail
      temp = temp.next
      if temp.next == nil
        temp = temp
        @tail = temp
      end
      return @head
    end
  end

  # This method prints out a representation of the list.
  def print
    node = @head
    while node!=nil
      puts "{node.data}\n"
      node = node.next
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
      node.next = nil
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
      return @head
    end
  end
end