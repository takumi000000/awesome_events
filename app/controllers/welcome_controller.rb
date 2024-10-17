class WelcomeController < ApplicationController
  skip_before_action :authenticate
  def index
    @event = Event.where("start_at > ?", Time.zone.now).order(:start_at)
  end
end
