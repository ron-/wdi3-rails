class MovieController < ApplicationController

  # movie form entry
  def movies
  end

  # movie results
  def getmovie

    @movie_name = params['movie_name'].chomp.split.join('+')

    @rawdata = HTTParty.get("http://www.omdbapi.com/?t=#{@movie_name}")
    @info = JSON(@rawdata.body)

    @poster = @info["Poster"]
    @title = @info["Title"]
    @year = @info["Year"]
    @rated = @info["Rated"]
    @runtime = @info["Runtime"]
    @genre = @info["Genre"]
    @director = @info["Director"]
    @writer = @info["Writer"]
    @actors = @info["Actors"]
  end

end
