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

end
