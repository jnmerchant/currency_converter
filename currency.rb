

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
