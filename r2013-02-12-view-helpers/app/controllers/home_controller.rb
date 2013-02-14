class HomeController < ApplicationController

  def homepage
  end

  def numbers
    @amount = 234
    @large_number = 270384237045738975
    @phone = 2126661212
  end

  def text
    @numbers = (1..10).to_a
    @person_count1 = 1
    @person_count2 = 2
    @story = 'a very long time ago in a place very far away.'
  end

  def assets

  end

  def url
  end

end