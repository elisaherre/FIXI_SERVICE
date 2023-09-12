class ChangeColumnsToPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :mp_id, :string
    change_column :payments, :amount, :string
    change_column :payments, :status, :string
  end
end
