class Api::EventUsersController < ApplicationController

  def create
    @event_user = EventUser.new(
      user_id: params[:user_id],
      event_id: params[:event_id]
    )
    if @event_user.save
      render "show.json.jbuilder"
    else
      render json: {errors: @event_user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @event_user = EventUser.find_by(id: params[:id])
    @event_user.destroy
    render json: {message: "User successfully removed from event"}
  end

end
