class Api::SongVersionsController < ApplicationController

  def index
    @song_versions = SongVersion.all
    render "index.json.jbuilder"
  end

  def show
    @song_version = SongVersion.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
