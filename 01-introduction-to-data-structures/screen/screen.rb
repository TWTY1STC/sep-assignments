require_relative 'pixel'


class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    self.matrix #= Array.new(@height, Array.new(@width))
    #at init matrix holds one container Array that will house other Arrays with pixels
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    puts pixel
    if inbounds(x, y)
      @width = x
      @height = y
      return self.matrix = Array.new(@height, Array.new(@width, pixel))
      #pixel = Array.new(@width)
      #return self.matrix = Array.new(@height, pixel)
      #self.matrix << pixel[x][y]
    end
    
   
  end
=begin
[[ , ,]
 [ . .]
 [ , ,]]
=end
  def at(x, y)
    #if self.matrix
      return pixel[x][y]
    #end
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