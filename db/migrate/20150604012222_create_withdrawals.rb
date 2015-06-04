class CreateWithdrawals < ActiveRecord::Migration
  def change
    create_table :withdrawals do |t|
      t.float :amount
      t.datetime :date
      t.string :collector

      t.timestamps null: false
    end
  end
end
