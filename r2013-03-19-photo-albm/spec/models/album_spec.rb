# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Album do

  let(:album) {Album.create(name: 'album1')}

  describe '.create' do
    it 'creates an Album' do
      album.should be_an_instance_of(Album)
      album.name.should eq 'album1'
    end
  end

  describe '#photos' do
    it 'has a photo' do
      photo = FactoryGirl.create(:photo)
      album.photos << photo
      album.photos.count.should eq 1
    end
  end

end
