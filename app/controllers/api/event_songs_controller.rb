class Api::EventSongsController < ApplicationController
  def index
    @event_songs = current_event_songs.order(:order)
    render "index.json.jbuilder"
  end

  def show
    @event_song = EventSong.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @event_song = EventSong.new(
      song_version_id: params[:song_version_id],
      event_user_id: current_event_user.id
    )
    if @event_song.save
      render "show.json.jbuilder"
    else
      render json: {errors: @event_song.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @event_song = EventSong.find_by(id: params[:id])
    @event_song.destroy
    render json: {message: "Song removed from queue"}
  end

  def update_orders
    # you have params[:ids] which is an array of EventSong ids in the right order
    # loop through params[:ids] (use each_with_index)
    #   find the EventSong with the id
    #   update the event song's order with the index
    # render json with a message?
  end
end