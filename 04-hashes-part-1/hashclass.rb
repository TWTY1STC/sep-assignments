require_relative 'hash_item' #(availables @key and @value)

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)  #<--explain this notation ; insert
    #items[] = key, value
  end


  def [](key) #< retrieve. 
  end

  def resize
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    hashcode = 
    if size < 5
  
    
    end
    return hashcode
    #hash function & get index of where hashed value should go based on size of array. 
    #determine resizing and insert location
  end

  # Simple method to return the number of items in the hash
  def size
    return @items.count
  end

end