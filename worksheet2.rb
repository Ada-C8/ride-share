########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

#1. List of rides
#2. Individual rides' info
########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  #1. List of drivers: array
  #2. Individual rides info: hash

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv


rides =
[
  [
    "DR0001",
    {
      date: "3rd Feb 2016",
      cost: 10,
      rider_id: "RD0003",
      rating: 3
    },
    {
      date: "3rd Feb 2016",
      cost: 30,
      rider_id: "RD0015",
      rating: 4
    },
    {
      date: "5th Feb 2016",
      cost: 45,
      rider_id: "RD0003",
      rating: 2
    }
  ],
  [
    "DR0002",
    {
      date: "3rd Feb 2016",
      cost: 25,
      rider_id: "RD0073",
      rating: 5
    },
    {
      date: "4th Feb 2016",
      cost: 15,
      rider_id: "RD0013",
      rating: 1
    },
    {
      date: "5th Feb 2016",
      cost: 35,
      rider_id: "RD0066",
      rating: 3
    }
  ],
  [
    "DR0003",
    {
      date: "4th Feb 2016",
      cost: 5,
      rider_id: "RD0066",
      rating: 5
    },
    {
      date: "5th Feb 2016",
      cost: 50,
      rider_id: "RD0003",
      rating: 2
    }
  ],
  [
    "DR0004",
    {
      date: "3rd Feb 2016",
      cost: 5,
      rider_id: "RD0022",
      rating: 5
    },
    {
      date: "4th Feb 2016",
      cost: 10,
      rider_id: "RD0022",
      rating: 4
    },
    {
      date: "5th Feb 2016",
      cost: 20,
      rider_id: "RD0073",
      rating: 5
    }
  ]
]


########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made


summary = []

rides.each do |driver|
  earnings = 0
  number_of_rides = 0
  rating = 0
  driver.each do |driver_hash|
    unless driver_hash == driver.first
      earnings += driver_hash[:cost].to_i
      number_of_rides +=1
      rating += driver_hash[:rating].to_f
    end
  end
  summary << [driver.first, earnings, number_of_rides, rating]
end


summary.each do |driver_data|
  puts "Driver #{driver_data[0]} made $#{driver_data[1]} with #{driver_data[2]} rides. His average rating is #{'%.2f' % (driver_data[3]/driver_data[2])}."
end
