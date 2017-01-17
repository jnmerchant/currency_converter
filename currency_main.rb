require_relative 'currency'
require_relative 'currency_converter'
require_relative 'currency_converter_error'

def main
  #test ==
  currency1 = Currency.new("EUR", 15)
  currency2 = Currency.new("EUR", 7)

  currency3 = currency1 + currency2
  puts currency3.code
  puts currency3.amount

  currency4 = currency1 * 2
  puts currency4.amount

  currency5 = Currency.new("$1.20")
  puts currency5.code
  puts currency5.amount


end

if __FILE__ == $PROGRAM_NAME
  main
end
