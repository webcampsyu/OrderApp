class Admin::GenresController < ApplicationController
  
  def index
    @genres = Genre.all
    @genre = Genre.new
  end 
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      @genres = Genre.all
      render :index
    else 
      @genres = Genre.all
      redirect_back(fallback_location: root_path)
    end 
  end 
    
  def edit
    @genre = Genre.find(params[:id])
  end 
  
  def update
    @genre = Genre.find(params[:id])
    if @genre.update
      redirect_to admin_genres_path
    else
      redirect_back(fallback_location: root_path)
    end 
  end 
    
  private
  def genre_params
    params.require(:genre).permit(:name)
  end 
  
end
