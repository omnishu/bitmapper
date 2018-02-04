require './lib/command'

module Commands
  # Color a Pixel with the provided color
  class ColorPixel < Command
    attr_reader :x, :y, :color

    # Class initializer
    #
    # @param x vertical column number of the matrix/starts from 1
    # @param y horizontal row number of the matrix/starts from 1
    # @param color the color to apply on (x, y) pixel.
    def initialize(x, y, color)
      @x = x.to_i
      @y = y.to_i
      @color = color
    end

    # Color the pixel (x, y)
    # @param object of App class
    def execute(app)
      raise BitmapMissing if app.bitmap.nil?
      app.bitmap[x, y] = color
    end

    # Class method. Verify the arguments and create the command.
    #
    # @param [] args List of the arguments passed to the initialize method.
    # @return [ColorPixel] the newly created instance of the command.
    def self.create(*args)
      raise BadNumberArguments.new(args.length, 3) if args.length != 3
      raise InvalidArguments unless Utils.int?(args[0]) && Utils.int?(args[1]) && Utils.color?(args[2])

      new(*args)
    end
  end
end
