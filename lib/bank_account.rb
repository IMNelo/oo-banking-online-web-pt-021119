require 'pry'

class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  @@all = []

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = 1000
    @status = "open"
    @@all << self
  end

  def self.all
    @@all
  end

  def deposit(funds_added)
    @balance += funds_added
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @balance > 0
      @status == "open"
    else
      false
    end
  end

  def close_account
    self.status = "closed"
  end

end
