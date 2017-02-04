class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    if self.top == nil
      @stack.insert(0,item)
    else
      top = @stack.index(self.top)
      @stack.insert(top+1, item)
    end
    self.top = item
  end
 
  def pop
    if self.top 
      temp = self.top
      temp_index = @stack.index(self.top)
      @stack.delete(self.top)
        if temp_index > 0
          self.top = @stack[temp_index -1]
        else
          self.top = nil
        end
      return temp
    else
      return nil
    end
=begin     
    top = @stack.index(self.top)
    if top > 0
      puts @stack
      puts "!!!" + self.top
      puts "@@@" + top.to_s
      temp = self.top
      puts "***" + temp
      @stack.delete(self.top)
      top--
      self.top = @stack.fetch(@stack.index(self.top).to_i)
      puts "---" + self.top
      return temp
      
    else
      return nil
    end
=end
  end

  def empty?
    if @stack.length > 0
      false
    else
      true
    end
  end
end