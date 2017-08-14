########################################################
# Step 1: Establish the layers
# First layer: All the information
# Second layer: Information per driver
# Third layer: Information per day
# Fourth layer: Information per trip
# Fifth layer: Trip details

########################################################
# Step 2: Assign a data structure to each layer
# First layer: Array
# Second layer: Hash
# Third layer: Hash
# Fourth layer: Array
# Fifth layer: Hash

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

taxis_info=[
  {
    "DR0001" =>
    {
      "3rd Feb 2016" =>
      [
        {
          "cost"=> 10, "Rider_id"=> "RD0003", "rating"=> 3
        },
        {
          "cost"=> 30, "Rider_id"=> "RD0015", "rating"=> 4
        }
      ],
      "5th Feb 2016" =>
      [
        {
          "cost"=> 45, "Rider_id"=> "RD0003", "rating"=> 2
        }
      ]
    },
    "DR0002" =>
    {
      "3rd Feb 2016" =>
      [
        {
          "cost"=> 25, "Rider_id"=> "RD0073", "rating"=> 5
        },
      ],
      "4th Feb 2016" =>
      [
        {
          "cost"=> 15, "Rider_id"=> "RD0013", "rating"=> 1
        }
      ],
      "5th Feb 2016" =>
      [
        {
          "cost"=> 35, "Rider_id"=> "RD0066", "rating"=> 3
        }
      ]
    },
    "DR0003" =>
    {
      "4th Feb 2016" =>
      [
        {
          "cost"=> 5, "Rider_id"=> "RD0066", "rating"=> 5
        },
      ],
      "5th Feb 2016" =>
      [
        {
          "cost"=> 50, "Rider_id"=> "RD0003", "rating"=> 2
        }
      ]
    },
    "DR0004" =>
    {
      "3rd Feb 2016" =>
      [
        {
          "cost"=> 5, "Rider_id"=> "RD0022", "rating"=> 5
        }
      ],
      "4th Feb 2016" =>
      [
        {
          "cost"=> 10, "Rider_id"=> "RD0022", "rating"=> 4
        }
      ],
      "5th Feb 2016" =>
      [
        {
          "cost"=> 20, "Rider_id"=> "RD0073", "rating"=> 5
        }
      ]
    }
  }
]


########################################################
# Step 4: Total Drivers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made
amount_trips=0
total_money=0
total_rating=0

taxis_info.each do |driver_info|
  driver_info.each do |driver, dates|
    dates.each do |day, trips|
      trips.each do |trip|
        total_money=total_money + trip["cost"]
        amount_trips +=1
        total_rating += trip["rating"]
      end
    end
    puts "The total number of trips for driver #{driver} is #{amount_trips} and the total income is #{total_money}. "
    puts "His average rating is #{total_rating.to_f/amount_trips}."
    amount_trips=0
    total_money=0
    total_rating=0
  end
end
