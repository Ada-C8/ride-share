########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
#layer one - overall grouping
#layer two - Driver ID
#layer three - Date, Cost, Rider-ID, and Rating
########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
  #layer one - overall grouping - array
  #layer two - Driver ID - hash
  #layer three - Date, Cost, Rider-ID, and Rating - part of hash
########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv



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
      # Step 4: Total Divers Earnings and Number of Rides

        # Use an iteration block to print driver's total rides and money made
      
      #pull arrays for drivers
      rideshare.each do |driver, rides|
        total_earnings = 0
        #look at eacg ride
        rides.each do |single_ride|
          total_earnings += single_ride[:cost]
        end
        puts "Driver #{driver} made $#{total_earnings} and took #{rides.length} rides."
      end
