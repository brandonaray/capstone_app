class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jbuilder"
  end

  def show
    @song = Song.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
