require "test_helper"

class FizzbuzzCLITest < Minitest::Test
  def test_cli_3
    output = StringIO.new
    status = Fizzbuzz::CLI.run(['3'], output: output)
    assert_equal 0, status
    assert_equal "1\n2\nfizz\n", output.string
  end

  def test_cli_empty_argument
    output = StringIO.new
    status = Fizzbuzz::CLI.run([], output: output)
    assert_equal 1, status
    assert_equal "数値を1つ渡してください\n",
                 output.string
  end
end
