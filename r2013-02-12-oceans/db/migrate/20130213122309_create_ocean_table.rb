class CreateOceanTable < ActiveRecord::Migration
  def change
    create_table :oceans do |t|
      t.string :name
      t.text :image
      t.integer :area
      t.integer :depth
    end
  end
end
