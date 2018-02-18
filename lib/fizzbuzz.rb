require "fizzbuzz/version"

module Fizzbuzz
  def self.fizzbuzz(n)
    1.upto(n).map do |i|
      if i % 15 == 0
        'fizzbuzz'
      elsif i % 3 == 0
        'fizz'
      elsif i % 5 == 0
        'buzz'
      else
        i
      end
    end
  end
end
