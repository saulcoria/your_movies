class V1::MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]

  # GET /v1/movies
  def index
    @movies = Movie.all

    render json: @movies
  end

  # GET /v1/movies/1
  def show
    render json: @movie
  end

  # POST /v1/movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/movies/1
  def destroy
    @movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit(:title, :release_year)
    end
end
