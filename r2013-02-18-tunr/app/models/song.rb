# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  filename   :string(255)
#  artist_id  :integer
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :decimal(, )      default(0.0)
#

class Song < ActiveRecord::Base
  attr_accessible :name, :image, :filename, :album_id, :artist_id, :genre_ids, :price, :mixtape_ids
  belongs_to :album
  belongs_to :artist
  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :genres
  validates :name, :presence => true
  validates :filename, :presence => true


end

