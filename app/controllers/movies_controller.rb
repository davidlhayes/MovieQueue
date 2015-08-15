class MoviesController < ApplicationController

  # get
  def index
    # render a list ... give a form to check off a movie
  end

  # get
  def new
    # displays a form to create a new movie queue item
  end

  # post
  def create
    # handle the form submission and add to database
  end

  # post
  def update
    # lets a user check off a movie from the queue
  end

  # patch
  def delete
    # lets a user delete a movie if they have not checked it off
    # else...they can't, they've already marked it watched.
  end

  # get
  def confirmation
    puts '---------movies#confirmation----------'
    puts params
    puts '---------movies#confirmation----------'
    # catch-all confirmation

  end
end
