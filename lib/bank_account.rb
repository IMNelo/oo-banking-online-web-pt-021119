class BankAccount

  attr_accessor :name, :balance #:status

  def initialize(name, balance = nil) #status = open)
    @name = name
    @balance = 1000
    #@status = status
  end

end
