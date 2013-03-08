class ExercisesController < ApplicationController
  before_filter :only_authorized

  def index
    @exercises = @auth.exercises
    @activities = @auth.exercises.map(&:activity).uniq.sort
  end

  def new
    @exercise = Exercise.new
  end

  def create
    e1 = Exercise.create(params[:exercise])
    @auth.exercises << e1
    @exercises = @auth.exercises
    @activities = @auth.exercises.map(&:activity).uniq.sort

    respond_to do |format|
      format.html { redirect_to(exercises_path)}
      format.js
    end
  end

  def chart
    render :json => @auth.exercises.where(:activity => params[:activity])
  end


  private
  def only_authorized
    redirect_to(root_path) if @auth.nil?
  end

end