class MoviesController < ApplicationController

  before_filter :authorize

  # get
  def index
    # render a list ... give a form to check off a movie
    @movies = Movie.all
  end

  # get
  def new
    # displays a form to create a new movie queue item
    @user_id = session[:user_id]
    @movie = Movie.new
  end

  # post
  def create
    # handle the form submission and add to database
    puts '-----PARAMS-----'
    puts params
    puts '----------------'
    @movie = Movie.create(movie_params)
  end

  # post
  def update
    # lets a user check off a movie from the queue
  end

  # patch
  def delete
    # lets a user delete a movie if they have not checked it off
    # else...they can't, they've already marked it watched.
    @movie = Movie.find(params[:movie][:id]).destroy
  end

  # get
  def confirmation
    puts '---------movies#confirmation----------'
    puts params
    puts '---------movies#confirmation----------'
    # catch-all confirmation

  end

private

  def movie_params
    params.require(:movie).permit(:user_id, :title, :reason, :importance)
  end


end
