# Base class for all the `Commands` classes
class Command
  # Child classes implements respective execution methods
  def execute
    raise NotImplementedMethod
  end
end
