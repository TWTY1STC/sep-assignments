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
      temp = @head
      while temp.next != @tail
        temp = temp.next
      end
      @tail.next = node
      @tail = node
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
      temp = @head
      if temp.next == nil
        return @tail = nil
      end
      while temp.next != @tail
        temp = temp.next
      end
      @tail = temp
      @tail.next = nil
      
    
     #temp = @tail #this resets the temp variable instead of updating it 
                #what you really want to do is update temp... and change the tail value. 
    #temp.next= nil #then temp next isn't nil... @tail.next is. 
    #what if you only have one node (@head = @tail)
  end

  # This method prints out a representation of the list.
  def print
    node = @head
    while node!=nil
      puts "#{node.data}\n"
      node = node.next
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    #node = @head
    if node == @head
      remove_front
    elsif node ==@tail
      remove_tail
    else
      temp = @head
      while temp.next != node
        temp = temp.next
      end
      temp.next = node.next
      if node.next = @tail
        temp = @tail
      end
    end
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