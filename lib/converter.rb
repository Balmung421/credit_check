module Converter 

  def convert
    cc_number.split("").reverse.map do |number|
      number.to_i
    end
  end

end
