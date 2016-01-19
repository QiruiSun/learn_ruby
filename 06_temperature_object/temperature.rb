class Temperature
  # attr_accessor :f, :c


  def initialize(temp = {})
    if temp.has_key?(:f)
      @f = temp[:f]
      @c = (@f - 32) * 5.0 / 9.0
    else
      @c = temp[:c]
      @f = (@c * 9.0 / 5.0) + 32
    end
  end

  def to_fahrenheit
    @f

  end

  def to_celsius
    @c
  end

  def self.in_celsius(c)
    new({:c => c})
  end

  def self.in_fahrenheit(f)
    new({:f => f})
  end
end

class Celsius < Temperature
  def initialize(c)
    @c = c
  end

  def to_fahrenheit
    @f = (@c * 9.0 / 5.0) + 32
  end

  def to_celsius
    @c
  end
end

class Fahrenheit < Temperature

  def initialize(f)
    @f = f
  end

  def to_fahrenheit
    @f
  end

  def to_celsius
    @c = (@f - 32) * 5.0 / 9.0
  end
end
