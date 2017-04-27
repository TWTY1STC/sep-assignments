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
      #@items[index].key = value
      #elsif @items[index].key == value
      
    #if key/value already exists, return the HashItem
    elsif @items[index].key == key && @items[index].value == value
      puts 'REPEAT ' + key + ", " + value+ ' ' + index.to_s
         return
    else
        #if key exists with a different value, expand
      resize()
      puts 'COLLISION ' + key + ", " + value+ ' ' + index.to_s
    end
      #@items[index].key = value
  
    #
    #key/value doesn't exist but no more slots (NA for now)
    #key/value exists, no more slots
  end

  def [](key) #< retrieve.
    size = size()
    index = index(key, size)
    if @items[index]
      #need to run the 'hash' function to find the location, but where to determine size
      return @items[index].value
    else
      return
    end
  end

  def resize
    size = size()
    #before changing the size of @items, 
      #need to 'save' the key/values pairs to recalcuate and reposition after resize
    #i.e storage = [] #iterate thru @items ? [[key, value], [key, value], [key, value]]
    #if location is empty, proceed to next index
    #if not empty, rehash using new size and insert
    copy = @items
    if size != nil
      size = size()*2
      @items = Array.new(size)
      copy.each do |x| 
        
        next if x == nil 
        #puts x.key
        #puts x.value
        index = index(x.key, size) 
        #puts x.key
        #puts x.value
        @items[index] = x
        #puts @items[index].key + ", " + @items[index].value
      end

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
    if key == nil
      return 0
    else
    hashcode = 0
          #while hashcode.length < 8
      #  hashcode +=key.ord
      #end
    
      hashcode = key.sum 
      #key.chars.each{ |x| hashcode +=x.ord}
      index = hashcode % size 
    end
    return index
  end
  # Simple method to return the number of items in the hash
  def size
    return @items.length
  end
end