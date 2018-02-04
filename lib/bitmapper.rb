# Main class, takes the commands, splits and delegates further actions
class Bitmapper

  # The actual bitmap which we shall return
  attr_accessor :bitmap

  # Initialized with empty array
  def initialize
    @bitmap = ''
  end

  # Main execution method
  def execute!(cmd)
    cmds = cmd.split(' ')
    case cmds.first
    when 'I'
      build_matrix(cmds[1], cmds[2], cmds[3])
    when 'C'
      clear_all(@bitmap)
    when 'L'
      color_single_pixel(cmds[1], cmds[2], cmds[3])
    when 'V'
      vertical_operation(cmds)
    when 'H'
      horizontal_operation(cmds)
    when 'S'
      return @bitmap
    else
      raise 'Unknown Command'
    end
  end

end
