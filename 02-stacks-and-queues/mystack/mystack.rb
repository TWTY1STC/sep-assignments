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
    @stack.delete_at(-1)
  end

  def empty?
    if @stack.length > 0
        false
      else
        true
    end
  end
end