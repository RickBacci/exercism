class Binary

  def self.to_decimal(binary_string)
    characters = binary_string.chars

    characters.inject(0) { |total, c|
      raise ArgumentError unless c == '0' || c == '1'

      total = total * 2 + c.to_i
    }
  end

end

