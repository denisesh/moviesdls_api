class MoviesController < ApplicationController
  def all
    @movie = Movie.all
    render json: @movie

  end
end
