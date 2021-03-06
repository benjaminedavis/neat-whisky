class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to "/"
    else
      render "new"
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
