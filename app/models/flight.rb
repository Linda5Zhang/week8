class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport, :departs_at, :departure_airport, :number, :seats

  MILEAGE_CHART = {
    "ORD-JFK" => 740,
    "ORD-LAX" => 1744,
    "ORD-SFO" => 1846,
    "JFK-LAX" => 2475,
    "JFK-SFO" => 2586,
    "LAX-SFO" => 338
  }

  def miles
    distance = MILEAGE_CHART["#{departure_airport}-#{arrival_airport}"]
    if distance.nil?
      distance = MILEAGE_CHART["#{arrival_airport}-#{departure_airport}"]
    end
    distance
  end

  def arrives_at
    self.departs_at + duration.minutes
  end

  def duration
    self.miles / 8
  end
end
