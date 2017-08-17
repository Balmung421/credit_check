require 'minitest/autorun'
require 'minitest/emoji'

class CreditCheckTest < Minitest::Test

  attr_reader :credit

  def setup
    @credit = CreditCheck.new
  end

  
end
