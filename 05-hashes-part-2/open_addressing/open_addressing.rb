require_relative 'node'

class OpenAddressing
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    loc = index(key, size)
    if @items[loc].key == key
      next_open_index(loc)
    end
  end

  def [](key)
    
    return @items[index]
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    #num = key.sum
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    while @items[index] != nil
      index++
    end
    return index
  end

  # Simple method to return the number of items in the hash
  def size
    return @items.length
  end

  # Resize the hash
  def resize
    size = size()
    copy = @items
    if size != nil
      size = size * 2
      @items = Array.new(size)
      copy.each do |x|
        next if x == nil
        index = index(x.key, size)
        @items[index] = x
      end
      return @items
    end
  end
end