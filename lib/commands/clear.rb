require './lib/command'

module Commands
  # Cleans up the table, setting all flashes all values to O
  class Clear < Command
    # Clear the bitmap
    def execute(app)
      raise BitmapMissing if app.bitmap.nil?

      app.bitmap.clear
    end
  end
end
