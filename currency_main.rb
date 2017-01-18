require_relative 'currency'
require_relative 'currency_converter'
require_relative 'currency_converter_error'

def main
  currency1 = Currency.new("$10000")
  converted = CurrencyConverter.new(currency1, "USD")

  currency6 = converted.convert_currency
  p currency6
  p currency6.code
  p currency6.amount

end

if __FILE__ == $PROGRAM_NAME
  main
end
