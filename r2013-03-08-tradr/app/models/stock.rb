# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  symbol     :string(255)
#  price      :decimal(, )
#  shares     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :user_id, :symbol, :price, :shares
  belongs_to :user, :inverse_of => :stocks

  before_save :purchase

  def get_quote
    YahooFinance::get_quotes(YahooFinance::StandardQuote, self.symbol)[self.symbol].lastTrade
  end

  def current_position
    self.shares * get_quote
  end

  def initial_position
    self.shares * self.price
  end

  def purchase
    price = get_quote
    if price.present?
      self.price = price
    end
  end

end
