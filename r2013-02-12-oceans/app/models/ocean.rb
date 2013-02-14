# == Schema Information
#
# Table name: oceans
#
#  id    :integer          not null, primary key
#  name  :string(255)
#  image :text
#  area  :integer
#  depth :integer
#

class Ocean < ActiveRecord::Base
  attr_accessible :name, :image, :area, :depth
end
