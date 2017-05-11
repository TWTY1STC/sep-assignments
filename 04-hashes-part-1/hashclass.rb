require_relative 'hash_item' #(availables @key and @value)

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)  #<-- insert
    index = index(key, size)
    #key/value does not exist, add a hash item
    if @items[index] == nil
      @items[index] = HashItem.new(key, value)
      puts key + ", " + value + ' ' + index.to_s
    
    #if key/value already exists, return that the HashItem exists
    elsif @items[index].key == key && @items[index].value == value
      puts 'REPEAT ' + key + ", " + value+ ' ' + index.to_s
         return 'entry exists'
    else
      # if index returns a location that's taken, expand
      while 1
      puts 'COLLISION ' + key + ", " + value+ ' ' + index.to_s
        resize()
        loc = index(key, size())
        
        break if @items[loc] == nil || @items[loc].key == key
      end
      loc = index(key, size())
      if  @items[loc] == nil
        @items[loc] = HashItem.new(key, value)
      else
        #if key exists with a different value, replace
        @items[loc].value == value
      end
    end
     #what if during the re-allocation, you have a collision? Resize within resize. (resize must be within a loop)
     #only breaks out of the loop if the location is empty or the key == key which needs to be updated.
     #reinsert @items[index] = HashItem.new(key, value)
    
  end

  def [](key) #< retrieve.
    index = index(key, size())
    if @items[index]
      #need to run the 'hash' function to find the location, but where to determine size
      return @items[index].value
    else
      return
    end
  end

  def resize
    size = size()
    copy = @items
    if size != nil
      size = size()*2
      @items = Array.new(size)
      copy.each do |x| 
        next if x == nil 
        index = index(x.key, size) 
        @items[index] = x
      end
    end
    #recalibrate the hash/index of all elements
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    if key == nil
      return 0
    else
    hashcode = 0
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