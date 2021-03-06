class MixtapesController < ApplicationController
  before_filter :check_if_logged_in

  def index
    @mixtapes = Mixtape.order(:name)
  end

  def new
    @mixtape = Mixtape.new
  end

  def create
    @mixtape = Mixtape.new(params[:mixtape])
    if @mixtape.save
      @auth.mixtapes << @mixtape
      redirect_to(mixtape_path)
    else
      render :new
    end
  end

  def edit
    @mixtape = Mixtape.find(params[:id])
    render :new
  end

  def update
    @mixtape = Mixtape.find(params[:id])
    if @mixtape.update_attributes(params[:mixtape])
      redirect_to(mixtapes_path)
    else
      render :new
    end
  end

  def show
    @mixtape = Mixtape.find(params[:id])
  end



  def destroy
  end

end

