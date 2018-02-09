class Api::ArtistsController < ApplicationController

  def index
@artists = Artist.all
# puts @artist to test that you received the information 
render json: @artists
  end

  def show
    @artist = Artist.find(params[:id])
    render json: @artist

  end
  
  def create
    @artist = Artist.create!(artist_params)
    render json: @artist

  end
  
  def update
    @artist = Artist.find(params[:id])
    @artist.update.!(artist_params)
    render json: @artist

  end
  
  def destroy
    @artist = Arist.find(params[:id])
    @artist.destroy
    render json:@artist

    render status: :ok
    

  end


private
def artist_params
    params.require(:artist)
    .permit(:name,:photo_url, :nationality)
end


end
