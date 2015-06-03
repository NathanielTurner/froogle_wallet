class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.float :amount
      t.integer :tracking_id
      t.string :investor
      t.datetime :date

      t.timestamps null: false
    end
    add_index :deposits, :tracking_id, unique: true
  end
end
