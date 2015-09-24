class Fizzbuzz
  def self.parse(num)
    result = num.to_s
    if num % 3 == 0
      result = 'Fizz'
    end
    if num % 5 == 0
      result = 'Buzz'
    end
    if num % 15 == 0
      result = 'FizzBuzz'
    end
    result
  end

  def self.range(start, finish)
    (start..finish).inject(String.new) { |memo, num| memo += "#{parse(num)}\n"}
  end
end
