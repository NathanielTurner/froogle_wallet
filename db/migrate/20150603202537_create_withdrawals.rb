class CreateWithdrawals < ActiveRecord::Migration
  def change
    create_table :withdrawals do |t|
      t.float :amount
      t.integer :tracking_id
      t.string :collector
      t.datetime :datr

      t.timestamps null: false
    end
    add_index :withdrawals, :tracking_id, unique: true
  end
end
