class SubscribersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      subscriber = Subscriber.create(tagline: 'enter', bio: 'vvv',  gender: 'enter', age: 18)
      subscriber.user = @user
    end
  end
end