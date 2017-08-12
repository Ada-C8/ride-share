# Ridesharing exercise
########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
  # 1. driver_id
  # 2. ride info: rider_id, date, cost, rating

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
  # 1. driver_id: hash
  # 2. ride info: array of hashes

########################################################
# Step 3: Make the data structure!

    # Setup the data structure and manually write in data presented in rides.csv
    rideshare = {
      DR0001: [
        {
          rider_id: :RD0003,
          date: '3rd Feb 2016',
          cost: 10,
          rating: 3
        },
        {
          rider_id: :RD0003,
          date: '5th Feb 2016',
          cost: 45,
          rating: 2
        },
        {
          rider_id: :RD0015,
          date: '3rd Feb 2016',
          cost: 30,
          rating: 4
        }
      ],
      DR0002: [
        {
          rider_id: :RD0013,
          date: '4th Feb 2016',
          cost: 15,
          rating: 1
        },
        {
          rider_id: :RD0066,
          date: '5th Feb 2016',
          cost: 35,
          rating: 3
        },
        {
          rider_id: :RD0073,
          date: '3rd Feb 2016',
          cost: 25,
          rating: 5
        }
      ],
      DR0003: [
        {
          rider_id: :RD0003,
          date: '5th Feb 2016',
          cost: 50,
          rating: 2
        },
        {
          rider_id: :RD0066,
          date: '4th Feb 2016',
          cost: 5,
          rating: 5
        }
      ],
      DR0004: [
        {
          rider_id: :RD0022,
          date: '3rd Feb 2016',
          cost: 5,
          rating: 5
        },
        {
          rider_id: :RD0022,
          date: '4th Feb 2016',
          cost: 10,
          rating: 4
        },
        {
          rider_id: :RD0073,
          date: '5th Feb 2016',
          cost: 20,
          rating: 5
        }
      ],
    }

########################################################
# Step 4: Total Drivers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made
  rideshare.each do |k, v|
    money = 0
    rating_total = 0
    (1..v.length).each do |i|
      money += v[i - 1][:cost]
      rating_total += v[i - 1][:rating]
    end
    average_rating = (rating_total.to_f / v.length).round(1)
    puts "Driver #{k} has #{v.length} rides, and made $#{money} with an average rating of #{average_rating}."
  end
