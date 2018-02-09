class Api::ArtistsController < ApplicationController

  def index
@artists = Artist.all
# puts @artist to test that you received the information 
render json: @artists
  end


end
