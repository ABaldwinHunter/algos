class WaterCollector
  InvalidType=Class.new(StandardError)

  def initialize(altitudes)
    check_input(altitudes)
  end

  private

  def check_input(altitudes)
    unless valid?(altitudes)
      raise(InvalidType, "Invalid Type")
    end
  end

  def valid?(altitudes)
    altitudes.is_a?(Array) && altitudes.map(&:class).uniq == [Fixnum]
  end
end


