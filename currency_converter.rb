class CurrencyConverter
  def initialize(currency, code)
  #access this has for a rate = currency_data["GBR"]["EUR"]
  @currency_data = {"GBR" => {"GBR" => 1.00, "USD" => 1.23997, "EUR" => 1.15818},
    "USD" => {"GBR" => 0.80647, "USD" => 1.00, "EUR" => 0.93404},
    "EUR" => {"GBR" => 0.86342, "USD" => 1.07062, "EUR" => 1.00}}

  @currency = currency
  @code = code
  end

  attr_reader :currency
  attr_reader :code

  def convert_currency
    converted_amount = @currency.amount.to_f * @currency_data[@currency.code][@code]
    Currency.new(@code, converted_amount)
  end

end
