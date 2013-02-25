# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  image      :text
#  title      :string(255)
#  pubdate    :string(255)
#  publisher  :string(255)
#  pages      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class Book < ActiveRecord::Base
  attr_accessible :image, :title, :pubdate, :publisher, :pages, :author_id
  belongs_to :author
end
