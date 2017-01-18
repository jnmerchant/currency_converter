require_relative 'currency'
require_relative 'currency_converter'
require_relative 'currency_converter_error'

def main
  currency1 = Currency.new("GBR", 1000)
  p currency1

  converted = CurrencyConverter.new(currency1, "EUR")
  p converted

end

if __FILE__ == $PROGRAM_NAME
  main
end
