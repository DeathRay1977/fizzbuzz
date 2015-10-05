class Fizzbuzz
  def self.parse(num)
    return 'FizzBuzz' if num % 15 == 0
    return 'Fizz' if num % 3 == 0
    return 'Buzz' if num % 5 == 0
    num.to_s
  end

  def self.range(start, finish)
    (start..finish).inject(String.new) { |memo, num| memo += "#{parse(num)}\n"}
  end
end
