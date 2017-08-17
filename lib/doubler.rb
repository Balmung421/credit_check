module Doubler 

  def doubler
    doubled = []
      convert.each_with_index do |number, index|
        if index.odd?
           doubled << number * 2
        else
          doubled << number
        end
      end
      doubled
    end

    def greater_than_10
      doubler.map do |number|
        if number >= 10
          number - 9
        else
          number
        end
      end
    end


end
