class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    @stack.insert(item)
    self.top = item
  end

  def pop
    temp = @stack[-1]
    @stack.delete(-1)
    return temp
  end

  def empty?
    if @stack.length > 0
      false
    else
      true
    end
  end
end