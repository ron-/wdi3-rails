class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text    :image
      t.string  :title
      t.string  :pubdate
      t.string  :publisher
      t.string  :pages
      t.timestamps
    end
  end
end
