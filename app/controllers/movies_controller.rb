class MoviesController < ApplicationController
  def index
    @movies = Movie.order('average_vote DESC')
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
