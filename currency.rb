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

end

def main
  #test ==
  currency1 = Currency.new("EUR", 9)
  currency2 = Currency.new("GBR", 7)

  puts currency1 != currency2

end

if __FILE__ == $PROGRAM_NAME
  main
end
