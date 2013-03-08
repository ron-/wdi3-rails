class PrioritiesController < ApplicationController
  def index
    @priorities = @auth.priorities.order(:value).reverse
  end
  def create
    color = params[:color]
    name = params[:name]
    value = params[:value]

    priority = Priority.create(:color => color, :name => name, :value => value)
    @auth.priorities << priority

    render :json => priority
  end
end
