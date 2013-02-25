class SongsController < ApplicationController
  before_filter :check_if_admin, :except => [:index, :show, :purchase, :buy]

  def index
    @songs = Song.order(:name)
  end

  def new
    @song = Song.new
  end

  def create
    @songs = Song.new(params[:song])
    if @songs.save
      redirect_to(songs_path)
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
    render :new
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to(songs_path)
    else
      render :new
    end
  end

  def purchase
    @song = Song.find(params[:id])
  end

  def buy
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:user])
      @auth.balance -= @song.price
      @auth.save
      # params[:song][:mixtape_ids].each do |mix_id|
      #   mixtape = Mixtape.find(mix_id)
      #   mixtape.songs << @song
      # end
      redirect_to(mixtape_path)
    else
      redirect_to(@song.album)
    end
  end

  def destroy
  end

  def show
    @song = Song.find(params[:id])
  end

end