class MoviesController < ApplicationController
  def all
    @movie = Movie.all
    render json: @movie
  end

  def search
    if params.has_key?("t")
      @movie = Movie.where("title LIKE ?", "#{params[:title]}%")
    end

    if params.has_key?("y")
      @movie = Movie.where(year: params["y"])
    end
    render json: @movie
  end
end
