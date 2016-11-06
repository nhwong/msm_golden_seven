class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit_movie_form
    @movie = Movie.find(params[:id])
  end

  def edit_movie
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:url]
    @movie.save

    redirect_to("/movies")
  end


  def delete_movie
    @movie = Movie.find(params[:id])
    @movie.delete

    redirect_to("/movies")
  end

  def new_movie
  end

  def create_movie
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:url]
    @movie.save

    redirect_to("/movies")
  end

end
