class Transaction < ActiveRecord::Base

  def self.balance
    balance = 0
    balance= Transaction.all.sum(:deposit)
    return balance
  end



end
