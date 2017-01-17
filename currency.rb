

class Currency
  def initialize(code, amount)
    @code = code
    @amount = amount
  end

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
