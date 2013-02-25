class AddBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string  :title
      t.string  :chef
      t.string  :cuisine
      t.text    :image
      t.text    :isbn
      t.timestamps
    end
  end
end
