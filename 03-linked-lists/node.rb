class Node
=begin
Elements in a Linked List are not stored next to one another in memory. 
A series of nodes compose every Linked List and each node contains a piece of data 
and the address (reference) of the next node in the list.
=end
  attr_accessor :next
  attr_accessor :data

  def initialize(data)
    @data = data
    self.next = null
  end
end