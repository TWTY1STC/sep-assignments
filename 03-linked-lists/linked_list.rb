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
    
    #if node.next == nil ###
    #  @tail = node
    #  node.next = nil
    #else
    #  node.next
    #end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    #empty
    if @tail == nil
      return
    #one item
    elsif @tail == @head
      @tail = nil
      @head = nil
    #multiple.. need for find the tail
    else
      temp = @head
        while @head && !temp=@head.next
          temp = temp.next
          @head = temp
        end
    end
    return temp
  end

  # This method prints out a representation of the list.
  def print
    result = ""
    while !@head=@tai
      result << @head.to_s
      @head = @head.next
    end
    return result.to_str
  
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    temp2 = @head
    temp = @head.next
    if node ==temp.next
      temp2 = temp
      temp = temp.next
      temp2.next = temp.next
    end
    #if @head == nil
    #  return
    #else
    #  temp = @head
    #  while !temp=node
    #    temp = temp.next
    #    if temp == node
    #      temp_t = temp.next
    #  end
    #  return 
      #start = @head
      #if start.next == node
      #  @tail = start
      #else
      #  start = start.next
      #end
    #  return @head
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