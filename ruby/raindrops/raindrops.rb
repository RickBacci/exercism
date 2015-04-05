
class Raindrops

  def self.guard_clause(number)
    return true if number % 3 != 0 && number % 5 != 0 && number % 7 != 0
  end

  def self.convert(number)
    return number.to_s if guard_clause(number)
    @temp_string = ''

    rain(number)
  end

  def self.rain(number)
    if number % 3 == 0
      number /= 3
      @temp_string << 'Pling'
      rain(number)
    elsif number % 5 == 0
      number /= 5
      @temp_string << 'Plang'
      rain(number)
    elsif number % 7 == 0
      number /= 7
      @temp_string << 'Plong'
      rain(number)
    end
    @temp_string
  end
end

#[3, 5, 7].each { |prime| @p == true if number % prime != 0 }
