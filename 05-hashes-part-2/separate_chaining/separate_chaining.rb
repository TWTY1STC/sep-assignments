require_relative 'linked_list'
require_relative 'node'

class SeparateChaining
    attr_reader :max_load_factor

    def initialize(size)
        @items = Array.new(size)
        @max_load_factor = 0.7
        @counter = 0
    end
    
    def []=(key, value)
        loc = index(key, size())
        node = Node.new(key, value)
        
        if @items[loc] == nil
            list = LinkedList.new()
        else
            list = @items[loc]
        end
        
        list.add_to_tail(node)
        @items[loc] = list
        
        @counter = @counter+1
        
        #trigger resize based on load factor
        if load_factor >= @max_load_factor
            self.resize
        end
    end
    
    def [](key) #<--retrieve
       loc = index(key, @items.size())
       list = @items[loc]
       
       if list != nil
           head = list.head
           while head != nil
               if head.key == key
                   return head.value
               end
               head = head.next
           end
       end
    end
    
    def index(key, size)
        #the index = starting point from which to being your search (for key or for an empty slot)
        #can use same formulation as other exercises
        index = key.sum % size
    end
    
    def load_factor
        #number of values it stores divided by number of buckets, no greater than .7. 
        #need to keep track of how many items in the hash
        return @counter / @items.size()
    end
    
    def size
        return @items.length
    end
    
    def resize
        #need to hash within a loop to ensure it resize
        #again if a collision happens while resizing
        copy = @items
        size = size() *2
        @items = Array.new(size)
        copy.each do |x|
            if x != nil
                current_head = x.head
                if current_head != nil
                    index = self.index(current_head.key, size())
                    node = Node.new(current_head.key, current_head.value)
                    if @items[index]==nil
                        @items[index] = LinkedList.new()
                        @items[index].add_to_tail(node)
                        if load_factor >= @max_load_factor
                            self.resize
                        end
                        current_head = current_head.next
                    else
                        @items[index].add_to_tail(node)
                        if load_factor >= @max_load_factor
                            self.resize
                        end
                        current_head = current_head.next
                    end
                end
            end
        end
    end
    
end