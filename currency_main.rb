require currency
require currency_converter
require currency_converter_error

def main
  #test ==
  currency1 = Currency.new("EUR", 9)
  currency2 = Currency.new("EUR", 7)

  currency3 = currency1 - currency2
  puts currency3.code
  puts currency3.amount

end

if __FILE__ == $PROGRAM_NAME
  main
end
