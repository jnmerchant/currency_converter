require_relative 'currency'
require_relative 'currency_converter'
require_relative 'currency_converter_error'

def main
  currency1 = Currency.new("GBR", 1000)
  p currency1
  puts currency1.code
  puts currency1.amount

  converted = CurrencyConverter.new(currency1, "EUR")
  p converted
  p converted.currency
  p converted.code

  p currency1 + Currency.new("GBR", 2000)

end

if __FILE__ == $PROGRAM_NAME
  main
end
