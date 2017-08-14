#Rideshare program for Julia Meier HW- due on August 14

driver = {
  "DR0001" => [
    {date: "03 Feb 2016", riderID: "RD0003", cost: 10, rating: 3},
    {date: "03 Feb 2016", riderID: "RD0015", cost: 30, rating: 4},
    {date: "05 Feb 2016", riderID: "RD0003", cost: 45, rating: 2}
  ],
  "DR0002" => [
    {date: "03 Feb 2016", riderID: "RD0073", cost: 25, rating: 5},
    {date: "04 Feb 2016", riderID: "RD0013", cost: 15, rating: 1}
  ],
  "DR0003" => [
    {date: "04 Feb 2016", riderID: "RD0066", cost: 5, rating: 5}
  ],
  "DR0004" => [
    {date: "03 Feb 2016", riderID: "RD0022", cost: 5, rating: 5},
    {date: "04 Feb 2016", riderID: "RD0022", cost: 10, rating: 4},
    {date: "05 Feb 2016", riderID: "RD0073", cost: 20, rating: 5}
  ]
}

trips_hash = {}
earnings_hash = {}
average_rating_hash = {}

puts "There are #{driver.length} drivers."

driver.each do |drivername, ride_array|
  number_of_trips = driver[drivername].length
  trips_hash.store(drivername.to_sym, number_of_trips)

  total_earnings = 0
  sum_of_ratings = 0
  number_of_trips.times do |x|
    total_earnings = total_earnings + driver[drivername][x][:cost]
    sum_of_ratings = sum_of_ratings + driver[drivername][x][:rating]
  end

  earnings_hash.store(drivername.to_sym, total_earnings)
  average_rating = (sum_of_ratings.to_f)/(number_of_trips.to_f)
  average_rating_hash.store(drivername.to_sym, average_rating)
end

trips_hash.each do |drivername, number_of_trips|
  puts "Driver #{drivername} gave #{number_of_trips} rides and earned $#{earnings_hash[drivername]}. His average rating was #{average_rating_hash[drivername]} out of 5.0."
end

# QUESTIONS
# 1- Why did I have to put quotes around DR0001. WHen I didn't use quotes it gave me this error:
# Julia_rideshare2.rb:2:in `<main>': uninitialized constant DR0001 (NameError)
# How can I make one hash to store the number_of_trips, earnings and ratings data instead of three separate ones?
