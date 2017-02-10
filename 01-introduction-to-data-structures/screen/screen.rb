require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    self.matrix
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    if inbounds(x, y)
      pixel = pixel[x][y]
    end
    @width = x
    @height = y
   
  end

  def at(x, y)
    #return pixel[x][y]
    
  end

  private

  def inbounds(x, y)
    #return nil when at(x,y) are negative or...
    if x < 0 || y < 0
      return nil
    else
      return
    end
  end

end