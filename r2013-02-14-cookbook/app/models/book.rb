# == Schema Information
#
# Table name: books
#
#  id      :integer          not null, primary key
#  title   :string(255)
#  chef    :string(255)
#  cuisine :string(255)
#  image   :text
#  isbn    :text
#

class Book < ActiveRecord::Base
  attr_accessible :title, :chef, :cuisine, :image, :isbn, :recipe_ids
  has_many :recipes
end
