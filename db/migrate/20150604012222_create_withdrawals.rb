class CreateWithdrawals < ActiveRecord::Migration
  def change
    create_table :withdrawals do |t|
      t.float :amount
      t.datetime :date
      t.string :collector
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
