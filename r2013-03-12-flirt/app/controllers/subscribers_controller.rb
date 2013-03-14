class SubscribersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(params[:user])
    subscriber = Subscriber.create(tagline: 'enter', bio: 'vvv',  gender: 'enter', age: 18)
    subscriber.user = user
  end

end