class Transaction < ActiveRecord::Base

  def self.balance
    balance = 0
    deposit_array= []
    Transaction.all.each do |transaction|
      deposit_array << transaction.deposit
    end
    balance= deposit_array.reduce(:+)
    return balance
  end



end
