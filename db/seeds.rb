airports = ["ORD", "JFK", "LAX", "SFO"]

if Rails.env.development?
  Flight.destroy_all
end

100.times do
  departure_code, arrival_code = airports.sample(2)

  Flight.create number: "#{rand(900) + 100}",
      departure_airport: departure_code,
      departs_at: Time.now.beginning_of_day + rand(24.hours),
      arrival_airport: arrival_code,
      seats: rand(60)

end










