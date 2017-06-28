# Evaluation Rubric
#
# The project will be assessed with the following guidelines:
#
# 1. Ruby Syntax & Style
#
# 4: Application demonstrates excellent knowledge of Ruby syntax, style, and refactoring
# 3: Application shows strong effort towards organization, content, and refactoring
# 2: Application runs but the code has long methods, unnecessary or poorly named variables, and needs significant refactoring
# 1: Application generates syntax error or crashes during execution
# 2. Breaking Logic into Components
#
# 4: Application is expertly divided into logical components each with a clear, single responsibility
# 3: Application effectively breaks logical components apart but breaks the principle of SRP
# 2: Application shows some effort to break logic into components, but the divisions are inconsistent or unclear
# 1: Application logic shows poor decomposition with too much logic mashed together
# 3. Functional Expectations
#
# 4: Application meets all requirements, and implements one extension properly.
# 3: Application meets all requirements as laid out per the specification.
# 2: Application runs, but does not work properly, or does not meet specifications.
# 1: Application does not run, crashes on start.

################
#pseudocode
#we want to grab the number
#we want to

#card_number = "4929735477250543"

#valid = false

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"

# from the rightmost digit, which is the check digit, moving left, double the value of every second digit
# if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
# take the sum of all the digits
# if and only if the total modulo 10 is equal to 0 then the number is valid

#credit_check.rb
require 'pry'
#binding.pry
class CreditCheck #matches the file name with CamelCase
  attr_reader :cc_number #pass info into it, but can only read it

  def initialize(cc_number) #what will be in this credit_check?
    @cc_number = cc_number #instance variable
  end

  # def cc_number #similar to attr_reader, but we can change it.
  #   @cc_number
  # end

  def validate #how will we validate the ccnumber
# Your Luhn Algorithm Here
# if and only if the total modulo 10 is equal to 0 then the number is valid
    if summer % 10 == 0 #equates to true
      puts "The number #{cc_number} is Valid"
    else
      puts "The number #{cc_number} is invalid!"
    end
  end

  def convert
    #string to an array, start from the end of it
    cc_number.split("").reverse.map do |number|
      number.to_i
    end
  end

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

      def summer
        sum = 0
        greater_than_10.each do |number|
          sum += number #sum = sum + number
        end
        sum
      end

end

cc  = CreditCheck.new( "4929735477250543")
cc_1  = CreditCheck.new( "5541808923795240")
cc_2  = CreditCheck.new( "4024007136512380")
cc_3 = CreditCheck.new( "6011797668867828")
cc_4 = CreditCheck.new( "5541801923795240")
cc_5 = CreditCheck.new( "4024007106512380")
cc_6 = CreditCheck.new( "6011797668868728")
cc_7 = CreditCheck.new( "342804633855673")
cc_8 = CreditCheck.new( "342801633855673")
cc.validate
cc_1.validate
cc_2.validate
cc_3.validate
cc_4.validate
cc_5.validate
cc_6.validate
cc_7.validate
cc_8.validate

#american express
#342804633855673, 342801633855673

#5541808923795240, 4024007136512380, 6011797668867828 #valid
#5541801923795240, 4024007106512380, 6011797668868728 #invalid
