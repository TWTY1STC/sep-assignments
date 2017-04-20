require_relative 'hash_item' #(availables @key and @value)

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)  #<-- insert
    index = index(key, size)
    #key/value does not exist
    if @items[index] == nil
      @items[index] = HashItem.new(key, value)
      #if key exist with a different value, update the value
    elsif @items[index].key==key && @items[index].value == value
         return
    else
      resize()
    end
      @items[index].key = value
  
    #key/value already exists
    #key/value doesn't exist but no more slots (NA for now)
    #key/value exists, no more slots
  end

  def [](key) #< retrieve.
    if size != nil
      index = index(key, size) #need to run the 'hash' function to find the location, but where to determine size
    end
    return @items[index].value
  end

  def resize
    size = @items.size
    #before changing the size of @items, 
      #need to 'save' the key/values pairs to recalcuate and reposition after resize
    #storage = [] #iterate thru @items ? [[key, value], [key, value], [key, value]]
    #go through hash, if 
    if size != nil
      size = size*2
      copy = @items
      @items = Array.new(size)
      copy.each{ |x, y| 
        next if x == nil 
        index = index(x, size) 
        self[x] = y
        } 
        
        #looping construct
        #if item == nil
        #  next
        #else
        #  index = index(key, size)
        #  self[key] = value
        #end
    #  end
        #if location is empty, proceed to next index
        # if not empty, rehash using new size and insert
      #  index = index(key, size)

      #reinsert @items[index] = HashItem.new(key, value)
      #HOW to call the 'insert' function? 
      
    end
    #recalibrate the hash/index of all elements
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    #hashcode is the location the key. this needs to be returned
    #split the key up (loop thru)
    #find the ascii value of each digit/char in the key
    #combine all the ascii values into a number string...this is the unique hashcode. return it.the hash
    #hash function & get index of where hashed value should go based on size of array. 
    #determine resizing and insert location
    if key
      hashcode = key.sum
      index = hashcode % size 
    end
    return index
  end
  # Simple method to return the number of items in the hash
  def size
    return @items.length
  end
end