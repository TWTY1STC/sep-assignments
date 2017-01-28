require_relative 'node'
## available thru node is next and data
class LinkedList
  attr_accessor :head
  attr_accessor :tail
  #next value is a reference to an object
  # start with an empty LinkedList and then call Node.new -> data , next. 
  
  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    # @ the tail node.next = null
    if(node.next == null)
      
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
  end

  # This method prints out a representation of the list.
  def print
    return node.next
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    # need to keep track of node.head
    #
    node.delete(head)
    head = node[]
  end
end