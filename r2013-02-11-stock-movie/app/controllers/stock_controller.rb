class StockController < ApplicationController

  # display search field
  def stocks
  end

  # display stock data
  def stocks_details
  end

  def calc
    @stock = params['stock_name'].upcase
    @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].lastTrade
  end
end
