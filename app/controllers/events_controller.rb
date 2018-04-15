class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.find(params[:id])
    @event.save
  end

  def update
    @event = Event.find(params[:id])
    @event.update(params[:event])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :date, :initime, :endtime, :photo)
  end
end
