require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    pixel = Pixel.new
    @width = x
    @height = y
  end

  def at(x, y)
    x.matrix
    y.matrix
  end

  private

  def inbounds(x, y)
    #return nil when at(x,y) are negative or...
    if x < 0 || y <0
      return nil
    else
      return
    end
  end

end