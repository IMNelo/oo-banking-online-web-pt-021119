class Transfer

  attr_accessor :amount, :sender, :receiver, :status

  @@all = []

  def initialize(amount, sender, receiver, status = "pending")
    @sender = sender
    @receiver = receiver
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
