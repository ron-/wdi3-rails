class HomeController < ApplicationController

  def homepage
  end

  def door
      case params['option'].downcase
      when '1' then redirect_to('/1')
      when '2' then redirect_to('/2')
      when '3' then redirect_to('/3')
      when 'a' then redirect_to('/a')
      when 'b' then redirect_to('/b')
      when 'c' then redirect_to('/c')
      end
  end




  def a
  end

  def b
  end

  def c
  end


  def one
    render '1'
  end

  def two
    render '2'
  end

  def three
    render '3'
  end


end