class StocksController < ApplicationController
  def index
    @stocks = Stock.order(:symbol)
  end

  def new
    @stock = Stock.new
  end

  def create
    Stock.create(params[:stock])
    @stocks = Stock.order(:symbol)

    respond_to do |format|
      format.html { redirect_to(stocks_path) }
      format.js
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end