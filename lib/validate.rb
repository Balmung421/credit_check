module Validate

  def validate
    if summer % 10 == 0
      return "The number #{cc_number} is Valid"
    else
      return "The number #{cc_number} is invalid!"
    end
  end


end
