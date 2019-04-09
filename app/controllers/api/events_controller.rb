class Api::EventsController < ApplicationController
  def index
    @events = Event.all
    render "index.json.jbuilder"
  end

  def create
    @event = Event.new(
      event_name: rand(1000..10000).to_s,
      event_duration: params[:event_duration],
      event_status: "pending"
    )
    if @event.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @event.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.event_duration = params[:event_duration] || @event.event_duration
    @event.event_status = params[:event_status] || @event.event_status
    if @event.save
      render "show.json.jbuilder"
    else
      render json: {errors: @event.errors.full_messages}, status: :unprocessable_entity
    end
  end
end