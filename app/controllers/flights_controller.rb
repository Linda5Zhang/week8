class FlightsController < ApplicationController

  def index
    @flights = Flight.order("number asc").page(params[:page]).per(10)
  end
end
