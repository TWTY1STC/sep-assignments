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
    end
    if @items[index].key==key
       if @items[index].value != value
        resize()
       end
    end
    #key/value already exists
    #key/value doesn't exist but no more slots (NA for now)
    #key/value exists, no more slots
  end

  def [](key) #< retrieve.
    if size != nil
      index = index(key, size) #need to run the 'hash' function to find the location, but where to determine size
    end
    return @items[index]
  end

  def resize
    size = @items.size
    
    if size != nil
      size = size*2
      @items = Array.new(size)
      for key in @items do index(key,size) end
      #index = index(key, size)
      #@items[index] = HashItem.new(key, value)
    end
    # doubles the size of the hash array
    
    #for key in @items do
    #  index(key, size)
    #end
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