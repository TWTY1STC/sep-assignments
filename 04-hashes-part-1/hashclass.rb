require_relative 'hash_item' #(availables @key and @value)

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)  #<-- insert
    #items[] = key, value
    #myhash = HashClass.new()
    #myhash[key, value] <- th
  end


  def [](key) #< retrieve. 
  end

  def resize
    # increase the size of the hash array
    
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
    hashcode = 0
    
    key.each_byte do |c|
      hashcode += c
    end
    index = hashcode % size 
    return index
  end

  # Simple method to return the number of items in the hash
  def size
    return @items.count
  end

end