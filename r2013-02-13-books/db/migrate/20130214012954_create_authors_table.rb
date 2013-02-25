class CreateAuthorsTable < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.text    :image
      t.string  :name
      t.string  :dob
      t.string  :birthplace
      t.string  :nationality
      t.timestamps
    end
  end
end
