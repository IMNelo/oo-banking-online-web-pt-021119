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
    @@all #exposes
  end

  def valid?
    @sender
    @receiver
  end

  def execute_transaction
  end

  def reverse_transfer
  end

end
