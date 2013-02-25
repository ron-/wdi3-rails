# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  image       :text
#  name        :string(255)
#  dob         :string(255)
#  birthplace  :string(255)
#  nationality :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Author < ActiveRecord::Base
  attr_accessible :image, :name, :dob, :birthplace, :nationality
  has_many :books 
end
