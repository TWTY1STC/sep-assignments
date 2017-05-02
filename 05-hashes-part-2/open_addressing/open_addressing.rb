require_relative 'node'

class OpenAddressing
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value) #<--insert
  end

  def [](key) #<--retrieve
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    #start with hash[index], while hash[index+1] != nil, keep going. return index where h[i] = nil
  end

  # Simple method to return the number of items in the hash
  def size
    return @items.length
  end

  # Resize the hash
  def resize
  end
end