class Currency
  def initialize(code, amount)
    attr_read :read
    attr_accessor :amount

    @code = code
    @amount = amount
  end
end
