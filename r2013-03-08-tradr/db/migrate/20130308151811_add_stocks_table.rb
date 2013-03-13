class AddStocksTable < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.string :symbol
      t.decimal :price, :default => 0
      t.integer :shares, :default => 0
      t.timestamps
    end
  end
end
