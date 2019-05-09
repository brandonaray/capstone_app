class Api::CategorySongsController < ApplicationController
  def show
    @category_songs = CategorySong.where(category_id: params[:category_id])
    render show.json.jbuilder
  end
end
