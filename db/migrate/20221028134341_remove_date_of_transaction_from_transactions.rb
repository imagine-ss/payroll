class RemoveDateOfTransactionFromTransactions < ActiveRecord::Migration[7.0]
  def change
    remove_column :transactions, :date_of_transaction, :datetime
  end
end
