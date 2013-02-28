airports = ["ORD", "JFK", "LAX", "SFO"]

mileage_chart = {
    "ORD-JFK" => 740,
    "ORD-LAX" => 1744,
    "ORD-SFO" => 1846,
    "MDW-JFK" => 740,
    "MDW-LAX" => 1744,
    "MDW-SFO" => 1846,
    "JFK-LAX" => 2475,
    "JFK-SFO" => 2586,
    "LAX-SFO" => 338
}

100.times do
  departure_code, arrival_code = airports.sample(2)

  Flight.create number: "#{rand(100..999)}",
      departure_airport: departure_code,
      departs_at: Time.now.beginning_of_day + rand(24.hours),
      arrival_airport: arrival_code,
      seats: rand(0..60)

end










