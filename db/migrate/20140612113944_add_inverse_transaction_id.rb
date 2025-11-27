class AddInverseTransactionId < ActiveRecord::Migration[7.1]
  def change
    add_column :debitcredit_transactions, :inverse_transaction_id, :integer
  end
end
