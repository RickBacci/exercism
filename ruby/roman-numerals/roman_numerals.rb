



class Fixnum

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
    values.each do |value, letter|
     if self % value == 0
      p string << letter
     end
    end
  end
end


