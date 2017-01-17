class Currency
  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  attr_reader :code
  attr_accessor :amount


  def ==(other)
    if @code == other.code && @amount == other.amount
      true
    else
      false
    end
  end

  def !=(other)
    if @code != other.code or @amount != other.amount
      true
    else
      false
    end
  end

  def +(other)
    if @code == other.code
      Currency.new(@code, @amount + other.amount)
    end
  end

  def -(other)
    if @code == other.code
      Currency.new(@code, @amount - other.amount)
    end
  end

end

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
