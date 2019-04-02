class Transfer

  attr_accessor :transfer, :sender, :receiver, :status

  def initialize(transfer, sender, receiver, status = "pending")
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

  def valid?
    @sender
    @receiver
    expect(avi.valid?).to eq (true)
    expect(amanda.valid?).to eq(true)
    expect(transfer.valid?).to eq(true)
  end

  def execute_transaction
  end

  def reverse_transfer
  end

end
