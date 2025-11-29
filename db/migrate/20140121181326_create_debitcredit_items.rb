class CreateDebitcreditItems < ActiveRecord::Migration[7.1]
  def change
    create_table :debitcredit_items do |t|
      t.references :transaction, null: false
      t.references :account,     null: false
      t.boolean    :debit,       null: false
      t.string     :comment,     null: true
      t.decimal    :amount,      null: false, precision: 20, scale: 2, default: 0
      t.decimal    :balance,     null: false, precision: 20, scale: 2, default: 0
      t.timestamps
    end
    add_index :debitcredit_items, :account_id, if_not_exists: true
    add_index :debitcredit_items, :transaction_id, if_not_exists: true
  end
end
