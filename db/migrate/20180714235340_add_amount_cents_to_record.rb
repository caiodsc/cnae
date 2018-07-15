class AddAmountCentsToRecord < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :amount_cents, :integer
  end
end
