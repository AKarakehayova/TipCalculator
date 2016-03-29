require 'test_helper'

class CalculatorTipsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CalculatorTips::VERSION
  end

  def test_it_does_something_useful
    assert false
  end

  def setup
    @test_bill = CalculatorTips::Bill.new(10, 10)
  end

  def test_if_it_calculates_correctly_the_tip
    assert_equal 1, @test_bill.tip
  end

  def test_if_it_calculates_correctly_the_total_amount
    assert_equal 11, @test_bill.total
  end
end
