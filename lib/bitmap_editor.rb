require './lib/app'

# Class BitmapEditor - Responsible to run the provided input file of commands
class BitmapEditor
  def run(file)
    build_bitmap(file)
  end

  private

  # Calls app, builds the Bitmap matrix by executing commands line by line
  def build_bitmap(file)
    return puts 'Please provide correct file' if file.nil? || !File.exist?(file)

    app = App.new

    File.open(file).each do |line|
      line = line.chomp
      bitmap_mapper = app.mapper
      bitmap_mapper.map(line).execute(app)
    end
  end
end
