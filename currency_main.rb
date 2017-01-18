require_relative 'currency'
require_relative 'currency_converter'
require_relative 'currency_converter_error'

def main
  puts "Create a currency object"
  currency1 = Currency.new("GBR", 1000)
  p currency1.to_s
  puts currency1.code
  puts currency1.amount

  puts "Create a currency converter object"
  converted = CurrencyConverter.new(currency1, "EUR")
  p converted
  p converted.currency
  p converted.code

  puts "Add two currency objects"
  p currency1 + Currency.new("GBR", 2000)

  puts "Multiply a currency object by a number"
  p currency1 * 8

  puts "Demonstrate currency_converter.convert(Currency.new(1, 'USD'), 'USD') == Currency.new(1, 'USD')"
  puts CurrencyConverter.new(Currency.new("USD" , 1), "USD").convert_currency == Currency.new("USD", 1)

  p converted2 = CurrencyConverter.new(Currency.new("$1.30"), "EUR").convert_currency
end

if __FILE__ == $PROGRAM_NAME
  main
end
