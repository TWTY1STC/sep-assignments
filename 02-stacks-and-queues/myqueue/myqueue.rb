class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue.first
    @tail = @queue.last
  end

  def enqueue(element)
    @queue.unshift(element)
    @head = @queue.first
    @tail = @queue.last
  end

  def dequeue
    temp = @queue[0]
    @queue.shift
    @head = @queue.first
    @tail = @queue.last
    return temp
  end

  def empty?
    if @queue.count > 0
      false
    else
      true
    end
  end
end