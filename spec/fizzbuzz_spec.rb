require_relative '../lib/fizzbuzz'
describe Fizzbuzz do
  context "Processing single numbers" do
    it "returns Fizz when the number given is divisible by 3" do
      expect(Fizzbuzz.parse(3)).to eq("Fizz")
    end
    it "returns Buzz when the number given is divisible by 5" do
      expect(Fizzbuzz.parse(5)).to eq("Buzz")
    end
    it "returns FizzBuzz when the number is divisible by 3 and 5" do
      expect(Fizzbuzz.parse(15)).to eq("FizzBuzz")
    end
    it "returns a string containing the number when given a number not divisible by 3 or 5" do
      expect(Fizzbuzz.parse(1)).to eq("1")
    end
  end
  context "processing a range of numbers" do
    it "handles a range of ascending numbers up to 3" do
      expect(Fizzbuzz.range(1,3)).to eq("1\n2\nFizz\n")
    end
    it "handles a range of ascending numbers up to 5" do
      expect(Fizzbuzz.range(1,5)).to eq("1\n2\nFizz\n4\nBuzz\n")
    end
  end
end
