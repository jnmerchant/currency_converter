

class Currency
  def initialize(code, amount = nil)
    defined_currency_symbols = {"£" => "GBR", "$" => "USD", "€" => "EUR"}
    if amount != nil
      @code = code
      @amount = amount
    else
      entered_symbol = code[0]
      @code = defined_currency_symbols[entered_symbol]
      @amount = code[1..-1]
    end
  end

  attr_reader :currency_symbol
  attr_reader :code
  attr_accessor :amount


  def ==(other_currency)
    if @code == other_currency.code && @amount == other_currency.amount
      true
    else
      false
    end
  end

  def !=(other_currency_currency)
    if @code != other_currency.code or @amount != other_currency.amount
      true
    else
      false
    end
  end

  def +(other_currency)
    if @code == other_currency.code
      Currency.new(@code, @amount + other_currency.amount)
    else
      raise CurrencyAdditionError, "Unlike Currencies cannot be added."
    end
  end

  def -(other_currency)
    if @amount < other_currency.amount
      raise NegativeCurrencyError, "Subtracting the two currencies would result in a negative amount."
    end
    if @code == other_currency.code
      Currency.new(@code, @amount - other_currency.amount)
    else
      raise CurrencySubtractionError, "Unlike Currencies cannot be subtracted."
    end
  end

  def *(value)
    Currency.new(@code, @amount * value)
  end

end
