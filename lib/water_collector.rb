class WaterCollector
  InvalidInput=Class.new(StandardError)

  def initialize(altitudes)
    @altitudes = altitudes
    @collected = 0
    check_input

  end

  def count
    if altitudes.length < 3
      return 0
    end
    else
      calculate
      return quantity
  end

  private

  attr_reader :altitudes

  def check_input
    unless valid?
      raise(InvalidInput, "Input must be an array of integers")
    end
  end

  def valid?
    altitudes.is_a?(Array) && altitudes.map(&:class).uniq == [Fixnum]
  end
end

  def calculate
    in_current_bucket = 0
    last_peak = 0
    last_peak_index = 0
    while true
      altitudes[last_peak_index, altitudes.length-1].each.with_index do |alt, i|
        if alt < last_peak
          in_current_bucket += last_peak - alt
        else



    end

