# Establish layers
# Assign data structures to layers
# Make the data structures
# Total drivers earnings and rides is the ultimate goal

# List out an array of hashes, starting with driver first.
# Each hash should contain the information for each event, for each driver.
# Utilize loops to iterate in order to add the costs together to get the grand total of earnings per driver.

dr0001 = [
    {
      date: "Feb 2",
      cost: 10,
      rating: 3,
      rider: 3
    },

    {
      date: "Feb 3",
      cost: 30,
      rating: 4,
      rider: 15
    },

    {
      date: "Feb 5",
      cost: 45,
      rating: 2,
      rider: 3
    }
  ]

  dr0002 = [
    {
      date: "Feb 4",
      cost2: 15,
      rating: 1,
      rider: 13
    },

    {
      date: "Feb 3",
      cost2: 25,
      rating: 5,
      rider: 73
    },

    {
      date: "Feb 5",
      cost2: 35,
      rating: 3,
      rider: 66
    }
  ]

  dr0003 = [
    {
      date: "Feb 4",
      cost3: 5,
      rating: 5,
      rider: 66
    },

    {
      date: "Feb 5",
      cost3: 50,
      rating: 2,
      rider: 3
    }
  ]

  dr0004 = [
    {
      date4: "Feb 3",
      cost4: 5,
      rating: 5,
      rider: 22
    },

    {
      date4: "Feb 4",
      cost4: 10,
      rating: 4,
      rider: 22
    },

    {
      date4: "Feb 5",
      cost4: 20,
      rating: 5,
      rider: 73
    }
  ]

# Driver 1 earnings loop.
    costs = []
  dr0001.each do |money|
    costs << money[:cost]
  end

  total = 0
  costs.each do |cost|
    total = total + cost
  end

# Driver 2 earnings loop.
    costs2 = []
  dr0002.each do |money2|
    costs2 << money2[:cost2]
  end

  total2 = 0
  costs2.each do |cost2|
    total2 = total2 + cost2
  end

# Driver 3 earnings loop.
  costs3 = []
  dr0003.each do |money3|
    costs3 << money3[:cost3]
  end

  total3 = 0
  costs3.each do |cost3|
    total3 = total3 + cost3
  end

# Driver 4 earnings loop.
  costs4 = []
  dr0004.each do |money4|
    costs4 << money4[:cost4]
  end

  total4 = 0
  costs4.each do |cost4|
    total4 = total4 + cost4
  end

# Rides (simplest version) provided by each driver, could also use #{dr0001.length} to display this information.
dr1_rides = dr0001.length
dr2_rides = dr0002.length
dr3_rides = dr0003.length
dr4_rides = dr0004.length

# Output of money made and rides for each driver.
puts "Driver 1 has made $#{total} and given #{dr1_rides} rides."
puts "Driver 2 has made $#{total2} and given #{dr2_rides} rides."
puts "Driver 3 has made $#{total3} and given #{dr3_rides} rides."
puts "Driver 4 has made $#{total4} and given #{dr4_rides} rides."
