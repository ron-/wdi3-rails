class DogsController < ApplicationController

  def dogs
  end

  def new
    redirect_to('/dogs')
  end

  def faq
    render 'home/faq'
  end

  def faq2
    render 'faq'
    # finds faq.html.erb and renders it, doesn't call the method!!!!
  end

end