
class Raindrops


    @data = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }


  def self.has_no_prime_factor?(number)
    @data.keys.each { |prime| return false if number % prime == 0 }
  end

  def self.convert(number)
    mt_string = ''

    return number.to_s if has_no_prime_factor?(number)

    @data.inject('') do |rain_drops, array| # [3, 'blah']
      mt_string << array[1] if number % array[0] == 0
    end
    mt_string
  end
end
