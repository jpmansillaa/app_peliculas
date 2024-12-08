class DocumentaryfilmsController < ApplicationController
  def index
    @documentary_film = DocumentaryFilm.all
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentaryfilms_params)
    
    if @documentary_film.save
      redirect_to documentaryfilms_index_path
    else
      render :new
    end
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  private

  def documentaryfilms_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
