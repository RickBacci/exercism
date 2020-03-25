



class Fixnum

  def initialize
    @test = 55
  end

  def string
    @string = ''
  end

  def values
    {
      1000 => 'M',
       500 => 'D',
       100 => 'C',
        50 => 'L',
        10 => 'X',
         5 => 'V',
         1 => 'I'
    }
  end


  def to_roman
    string = ''

    values.each do |value, letter|
      if self % value == 0
        value = value - 10
        p @test
        p string << letter
        p value
        p foo = self
        p foo -= 100
      end
    end
    string
  end
end


