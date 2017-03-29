class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    
  end


  def [](key)
  end

  def resize
    
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    # just returns a location. 
  end

  # Simple method to return the number of items in the hash
  def size
    #size of the array 
  end

end