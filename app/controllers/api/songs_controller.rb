class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jbuilder"
  end
end
