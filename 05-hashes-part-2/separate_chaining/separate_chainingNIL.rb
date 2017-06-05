require_relative 'linked_list' 
require_relative 'node'
 
class SeparateChaining 
  attr_reader :max_load_factor 
  
  def initialize(size) 
   @items = Array.new(size)
   @max_load_factor = 0.7 
    #to calculate the load factor, need a counter to keep track of number of items 
   @counter = 0
  end 
 
  def []=(key, value) 
   loc = index(key, size())
   node = Node.new(key, value)
   
   #if starting point is empty, create a new LinkedList and add a node to it
   if @items[loc] == nil
    list = LinkedList.new()
    #if not, the start with the first item of the list and then add to the LinkedList tail. 
   else
    list = @items[loc]
   end 
   
   list.add_to_tail(node)
   @items[loc] = list
   
   @counter++
  end

  def [](key) #< --retrieve
  #start at the index given by hashing key. 
  #if key == @item[index].key, return @item[index].value
   #if not, go to next item in list (keep checking until you either find matching keys or item.next = nil)
   
   loc = index(key, @items.size())
   #find the starting location, i.e. the linked list within which to look
   list = @items[loc]
   #if there is nothing there end it; really the work comes if there is something there
   if list != nil
    head = list.head
    #loop thru the list until you find the key 
     #return value
     #otherwise, end loop
    while head !=nil
     if head.key == key
      return head.value
     end
     head = head.next
    end
   end
  end 

  # Returns a unique, deterministically reproducible index into an array 
   # We are hashing based on strings, let's use the ascii value of each string as 
   # a starting point. 
  def index(key, size) 
   #the index provides a starting point from which to being your search (for key or for an empty slot)
   #can use same formulation as other exercises
   index = key.sum % size
  end 

   # Calculate the current load factor 
  def load_factor 
   #number of values it stores divided by number of buckets, no greater than .7. 
   #need to keep track of how many items in the hash
   return @counter / @items.size()
  end 
 
   # Simple method to return the number of items in the hash 
  def size 
   return @items.length
  end 

   # Resize the hash 
  def resize 
  end 
end 
