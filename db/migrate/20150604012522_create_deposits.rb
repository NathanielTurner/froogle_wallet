class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.string :investor
      t.float :amount
      t.datetime :date
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
