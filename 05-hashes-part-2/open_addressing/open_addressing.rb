require_relative 'node'

class OpenAddressing
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    
    loc = index(key, size())
    
    if @items[loc]==nil
      @items[loc] = Node.new(key, value)
      
    elsif @items[loc].key == key
      @items[loc].value = value
      
    else
      loc = next_open_index(loc+1)
      if loc == -1
        resize()
        self[key] = value
      else
        @items[loc] = Node.new(key, value)
      end
    end
  end

  def [](key)
    loc = index(key, size())
    while @items[loc].key != key
      loc+=1 
    end
    return @items[loc].value
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    return key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    #starting index is empty, return it
    #[LOOP] if starting index isn't empty so go to next next; 
      #...if it's empty return, else continue to next..til the length of items
      #if no index is empty, return -1
    #start with index, loop through to the end of @item (i.e. =size), if no empty slot, return -1, otherwise return the index.
    (index...size()).each do |x|
      if @items[x] == nil
        return x
      end
    end
    return -1
  end

  # Simple method to return the number of items in the hash
  def size
    return @items.length
  end

  # Resize the hash
  def resize
    size = size() *2
    copy = @items
    @items = Array.new(size)
      copy.each do |x|
        next if x == nil
        index = index(x.key, size)
        @items[index] = x
      end
    return @items
  end
end
