require "test_helper"

class FizzbuzzCLITest < Minitest::Test
  def test_cli_3
    output = StringIO.new
    exit_status = Fizzbuzz::CLI.run(['3'], output: output)
    assert_equal 0, exit_status
    assert_equal "1\n2\nfizz\n", output.string
  end

  def test_cli_empty_argument
    output = StringIO.new
    exit_status = Fizzbuzz::CLI.run([], output: output)
    assert_equal exit_status, 1
    assert_equal "fizzbuzzには数値を1つ渡してください\n", output.string
  end
end
