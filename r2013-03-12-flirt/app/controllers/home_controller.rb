class HomeController < ApplicationController
  def index
    @subscriptions = Subscription.all
  end
end