require_relative 'converter'
require_relative 'doubler'
require_relative 'sum'
require_relative 'validate'

class CreditCheck
  include Converter
  include Sum
  include Doubler
  include Validate 
  attr_reader :cc_number

  def initialize(cc_number)
    @cc_number = cc_number
  end

end
