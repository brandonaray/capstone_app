class Api::SongVersionsController < ApplicationController

  def index
    @song_versions = SongVersion.all
    render "index.json.jbuilder"
  end

end
