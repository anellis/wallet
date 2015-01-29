class ChangeAmountToDecimal < ActiveRecord::Migration
  def change
    add_column :transactions, :spent_on, :date
    change_column :transactions, :deposit, :decimal, precision: 7, scale: 2
  end
end
