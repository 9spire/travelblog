# Liquid 4 still calls Object#tainted?, removed in Ruby 3.2+/4.0.
# Restore no-op taint APIs so Jekyll 4.2 can build on modern Ruby.
class Object
  def tainted?
    false
  end

  def taint
    self
  end

  def untaint
    self
  end
end
