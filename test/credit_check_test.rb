require 'pry'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  attr_reader :credit

  def setup
    @credit = CreditCheck.new("4929735477250543")
  end

  def test_if_it_exists
    assert_instance_of CreditCheck, credit
  end

  def test_if_number_is_valid
    expected = "The number 4929735477250543 is Valid"
    assert_equal expected, credit.validate
  end

end
