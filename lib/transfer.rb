class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  @@all = []

  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @@all << self
  end

  def self.all
    @@all
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if @status == "pending" && self.valid? == true && @sender.balance >= @amount
      puts "executing transaction"
      @sender.deposit(-1 * @amount)
      @receiver.deposit(@amount)
      @status = "complete"
    elsif @sender.valid? == false || @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    #else
    end
    end

  def reverse_transfer
  end

end
