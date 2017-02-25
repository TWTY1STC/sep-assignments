require_relative 'hash_item' #(availables @key and @value)

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)  #<--explain this notation
    #items[] = key, value
  end


  def [](key) #< insert?
  end

  def resize
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
  end

  # Simple method to return the number of items in the hash
  def size
    
  end

end