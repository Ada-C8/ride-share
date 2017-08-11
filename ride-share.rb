# Create arrays to store the number of rides drivers have taken and the amount of money they have made

driver_ids = ["DR0001", "DR0002", "DR0003", "DR0004"]
driver_rides = [0, 0, 0, 0]
driver_money = [0, 0, 0, 0]
driver_stars = [0.0, 0.0, 0.0, 0.0]

# Populate ride data
rides = [
  {
    driver_id: "DR0004",
    date: "3rd Feb 2016",
    cost: 5,
    rider_id: "RD0022",
    rating: 5
  },
  {
    driver_id: "DR0001",
    date: "3rd Feb 2016",
    cost: 10,
    rider_id: "RD0003",
    rating: 3
  },
  {
    driver_id: "DR0002",
    date: "3rd Feb 2016",
    cost: 25,
    rider_id: "RD0073",
    rating: 5
  },
  {
    driver_id: "DR0001",
    date: "3rd Feb 2016",
    cost: 30,
    rider_id: "RD0015",
    rating: 4
  },
  {
    driver_id: "DR0003",
    date: "4th Feb 2016",
    cost: 5,
    rider_id: "RD0066",
    rating: 5
  },
  {
    driver_id: "DR0004",
    date: "4th Feb 2016",
    cost: 10,
    rider_id: "RD0022",
    rating: 4
  },
  {
    driver_id: "DR0002",
    date: "4th Feb 2016",
    cost: 15,
    rider_id: "RD0013",
    rating:1
  },
  {
    driver_id: "DR0003",
    date: "5th Feb 2016",
    cost: 50,
    rider_id: "RD0003",
    rating: 2
  },
  {
    driver_id: "DR0002",
    date: "5th Feb 2016",
    cost: 35,
    rider_id: "RD0066",
    rating: 3
  },
  {
    driver_id: "DR0004",
    date: "5th Feb 2016",
    cost: 20,
    rider_id: "RD0073",
    rating: 5
  },
  {
    driver_id: "DR0001",
    date: "5th Feb 2016",
    cost: 45,
    rider_id: "RD0003",
    rating: 2
  }
]

# Total driver rides, money made, and number of stars given
rides.length.times do |i|
  case rides[i][:driver_id]
  when "DR0001"
    driver_rides[0] += 1
    driver_money[0] += rides[i][:cost]
    driver_stars[0] += rides[i][:rating]
  when "DR0002"
    driver_rides[1] += 1
    driver_money[1] += rides[i][:cost]
    driver_stars[1] += rides[i][:rating]
  when "DR0003"
    driver_rides[2] += 1
    driver_money[2] += rides[i][:cost]
    driver_stars[2] += rides[i][:rating]
  when "DR0004"
    driver_rides[3] += 1
    driver_money[3] += rides[i][:cost]
    driver_stars[3] += rides[i][:rating]
  end
end

# Print ids, rides, total money, and stars/rides (average rating)

4.times do |i|
  puts "The driver with ID# #{driver_ids[i]} gave #{driver_rides[i]} rides and made $#{driver_money[i]}. Their average rating was #{(driver_stars[i]/driver_rides[i]).truncate(2)}"
end
