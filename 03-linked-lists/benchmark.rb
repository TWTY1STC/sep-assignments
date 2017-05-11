require 'benchmark'
require_relative "node"
require_relative 'linked_list'

=begin
Compare the time it takes to create a 10,000 item Array to appending 10,000 items to a Linked List.
Compare the time it takes to access the 5000th element of the Array and the 5000th Node in the Linked List.
Compare the time it takes to remove the 5000th element from the Array to removing the 5000th Node in the Linked List.
In the Array, the 5001st item becomes the 5000th, and so on.
=end
ray = []
list = LinkedList.new


puts Benchmark.bm {|x|

 #create 10,000 element Array
 x.report('10K ray')do
     array = Array.new(10000)
    #(0...10000).each do |y|
    #    array[y] = Node.new(y)
    #end
 end
 
 #create 10,000 node List
 x.report('10K node List') do
    (0...10000).each do |y|
        list.add_to_tail(Node.new(y))
    end
 end
}

puts Benchmark.bm {|x|

#Access the 5000th (i.e. [4999]) element in Array 
    x.report('4999th i in ray')do
       ray[4999]
    end

#Access the [4999] node in List
    x.report('4999th node in list')do
        node = list.head
        (0..4999).each do |y|
            node = node.next
        end
    end

}


puts Benchmark.bm {|x|

#Remove [4999] element from Array 
    x.report('remove 4999th in ray')do
       ray.delete_at(4999)
    end

#Remove [4999] node in List
    x.report('remove 4999th node in list')do
        node = list.head
        (0..4999).each do |y|
            node = node.next
        end
        list.delete(node)
    end

}




