require './lib/credit_check'

cc   = CreditCheck.new("4929735477250543")
cc_1 = CreditCheck.new("5541808923795240")
cc_2 = CreditCheck.new("4024007136512380")
cc_3 = CreditCheck.new("6011797668867828")
cc_4 = CreditCheck.new("5541801923795240")
cc_5 = CreditCheck.new("4024007106512380")
cc_6 = CreditCheck.new("6011797668868728")
cc_7 = CreditCheck.new("342804633855673")
cc_8 = CreditCheck.new("342801633855673")
p cc.validate
p cc_1.validate
p cc_2.validate
p cc_3.validate
p cc_4.validate
p cc_5.validate
p cc_6.validate
p cc_7.validate
p cc_8.validate
