require 'pry'
class SecretHandshake
  attr_reader :binary_string

  def initialize(number)
    @binary_string = number.to_s(2)

    @hand_shakes = { '1' => 'wink',
                     '10' => 'double blink',
                     '100' => 'close your eyes',
                     '1000' => 'jump'
                    }
    @array = []
    @reverse = false
    @i = 0
  end


  def commands
    @i += 1
    return @array if binary_string.empty?

    if @hand_shakes.keys.include?(binary_string)
       @array << @hand_shakes[binary_string]
       @binary_string = ''
       @array
    else
      remove_one if @binary_string[-1] == '1'
    end
    commands unless @i > 10
  end


  def remove_one
    @binary_string[-1] = '0'
    @array << @hand_shakes['1']
  end
end
