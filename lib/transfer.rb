class Transfer

  attr_accessor :transfer, :sender, :receiver, :status

  @@all = []

  def initialize(transfer, sender, receiver, status = "pending")
    @transfer = transfer
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
