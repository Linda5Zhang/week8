class FlightsController < ApplicationController

  def index
    @flights = Flight.order("number asc")
    if params[:search].present?
      k = params[:search]
      @flights = @flights.where("departure_airport LIKE ? OR arrival_airport LIKE ?",
                                "%#{k}%", "%#{k}%")
    end

    @flights = @flights.page(params[:page]).per(10)
  end
end
