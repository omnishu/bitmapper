# Class Utils - For multi-utility methods
class Utils
  class << self
    # Return if `str` is an Integer
    def int?(str)
      str.is_a?(Integer) ? true : !(/\A[-+]?\d+\z/ =~ str).nil?
    end

    # Return if `str` is a color
    # i.e. a character, Capitalized A-Z
    def color?(str)
      str.size == 1 && str[0] >= 'A' && str[0] <= 'Z'
    end
  end
end
