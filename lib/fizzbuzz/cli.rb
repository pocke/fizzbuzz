module Fizzbuzz
  module CLI
    def self.run(argv, output: $stdout)
      unless argv.size == 1
        output.puts "数値を1つ渡してください"
        return 1
      end

      n = argv.first.to_i
      output.puts Fizzbuzz.fizzbuzz(n)
      return 0
    end
  end
end
