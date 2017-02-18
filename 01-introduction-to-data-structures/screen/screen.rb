require_relative 'pixel'


class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    self.matrix = Array.new(height, Array.new(width))
    #at init matrix holds one container Array that will house other Arrays with pixels
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    if inbounds(x, y)
      #@width = x
      #@height = y
      matrix[x][y] = pixel
      return matrix
      #return matrix #= Array.new(@height, Pixel.new(@width))
      #pixel = Array.new(@width)
      #return self.matrix = Array.new(@height, pixel)
      #self.matrix << pixel[x][y]
    end
  end

  def at(x, y)
    if !matrix.empty?
      return matrix[x][y]
    end
  end

  private

  def inbounds(x, y)
    #return nil when at(x,y) are negative or...
    if x < 0 || y < 0 || x > @width || y > @height
      return nil
    else
      return true
    end
  end

end