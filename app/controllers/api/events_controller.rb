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
    @event.save
    render "show.json.jbuilder"

    def show
      @event = Event.find_by(id: params[:id])
      render "show.json.jbuilder"
    end
  end
end
