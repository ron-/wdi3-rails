# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :text
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Photo do

  let(:photo){photo = Photo.create(name: 'photo1', url: 'photo1.jpg')}

  describe '.create' do
    it 'creates a photo' do
      photo.should be_an_instance_of(Photo)
      photo.name.should eq 'photo1'
      photo.url.should eq 'photo1.jpg'
    end
  end

  describe '#album' do
    it 'has an album' do
      album = Album.create(name: 'album1')
      photo.album = album
      photo.album.should eq album
    end
  end

end
