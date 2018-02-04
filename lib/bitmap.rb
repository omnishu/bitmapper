# Class holding all basic bitmap methods
class Bitmap
  attr_reader :width, :height

  # Class initialization
  #
  # @param height The height of the bitmap matrix
  # @param width The width of the bitmap matrix
  def initialize(width, height)
    @height = height.to_i
    @width = width.to_i
    clear
  end

  # Returns the size of the data for the bitmap matrix
  #
  # @return The size of the data representing the bitmap matrix
  def size
    width * height
  end

  # Set and return the data if not done yet.
  #
  # @return The data representing the bitmap.
  def data
    @data ||= 'O' * size
  end

  # Clear the bitmap by setting all the pixels to O.
  #
  # @return The data representing the bitmap all with O.
  def clear
    @data = 'O' * size
  end

  # Element reference operator to get a pixel.
  #
  # @param x vertical row number of the matrix/starts from 1
  # @param y horizontal row number of the matrix/starts from 1
  # @return The color of the pixel
  def [](x, y)
    raise OutOfRange unless check_range(x, y)
    data[index(x, y)]
  end

  # Return the real index in the table given the x and y position.
  #
  # @param x the x of the pixel.
  # @param y the y of the pixel.
  # @return the real index in the table.
  def index(x, y)
    (y - 1) * width + (x - 1)
  end

  # Check if the pixel (x, y) is within the bitmap.
  #
  # @param x the x of the pixel
  # @param y the y of the pixel
  # @return [Boolean] true if the pixel is within the image.
  def check_range(x, y)
    !(x < 1 || y < 1 || x > width || y > height)
  end

  # Set a pixel with the given color.
  #
  # @param x The x of the pixel
  # @param y The y of the pixel
  # @param color The new color of the pixel
  def []=(x, y, color)
    raise OutOfRange unless check_range(x, y)
    data[index(x, y)] = color
  end
end
