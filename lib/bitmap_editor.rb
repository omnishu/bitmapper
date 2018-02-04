require_relative 'bitmapper'

class BitmapEditor
  def run(file)
    return puts 'Please provide correct file' if file.nil? || !File.exist?(file)
    build_bitmap(file)
  end

  private

  def build_bitmap(file)
    bitmapper = Bitmapper.new

    File.open(file).each do |line|
      line = line.chomp
      bitmapper.execute!(line)
    end
    # return bitmapper
    puts bitmapper.bitmap
  end
end
