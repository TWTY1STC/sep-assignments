require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    self.matrix = Matrix(@width, @height) #??
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    
  end

  def at(x, y)
    return pixel
    
  end

  private

  def inbounds(x, y)
    #return nil when at(x,y) are negative or...
    
  end

end