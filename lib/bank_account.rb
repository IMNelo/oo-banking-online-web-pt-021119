require 'pry'

class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(add_funds)
    @balance += deposit
  end

  def display_balance(balance)
    @balance
    "Your balance is $#{balance}."
  end

  def valid?
  end

  def close_account
    self.status = "closed"
  end

end
