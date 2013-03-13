# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  userable_id     :integer
#  userable_type   :string(255)
#

require 'spec_helper'

describe User do
  describe '.new' do

    it 'creates an instance of User' do
      subscriber = User.new
      expect(subscriber).to be_an_instance_of(User)
    end

    it 'has username, email password and password_confirmation' do
      user = User.new(username: 'bob', email:'bob@gmail.com', password: 'a', password_confirmation: 'a' )
      expect(user.username).to eq 'bob'
      expect(user.email).to eq 'bob@gmail.com'
      expect(user.password).to eq 'a'
      expect(user.password_confirmation).to eq 'a'
    end
  end

  describe '.create' do
    it 'has an id' do
      user = User.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.id).to_not be nil
    end
  end

  describe '#metadata' do
    it 'has subscriber properties' do
      subscriber = Subscriber.create(tagline: 'hey', bio: 'my bio...', preferences: 'a,b,c', bodytype: 'd', location: 'ny', status: 'single', ethnicity: 'human', gender: 'female', age: '29', occupation: 'rails developer', interests: 'a,b,c', political: 'independent', religious: 'i <3 God', education: 'GA', income: '1_000_000' )
      expect(subscriber.tagline).to eq 'hey'
      expect(subscriber.bio).to eq 'my bio...'
      expect(subscriber.preferences).to eq 'a,b,c'
      expect(subscriber.bodytype).to eq 'd'
      expect(subscriber.location).to eq 'ny'
      expect(subscriber.status).to eq 'single'
      expect(subscriber.ethnicity).to eq 'human'
      expect(subscriber.gender).to eq 'female'
      expect(subscriber.age).to eq '29'
      expect(subscriber.occupation).to eq 'rails developer'
      expect(subscriber.interests).to eq 'a,b,c'
      expect(subscriber.political).to eq 'independent'
      expect(subscriber.religious).to eq 'i <3 God'
      expect(subscriber.education).to eq 'GA'
      expect(subscriber.income).to eq '1_000_000'
    end
  end

end
