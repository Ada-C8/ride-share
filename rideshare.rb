
#variables:  I originally thought that I should make the driver number a key, then use all the info in a hash as the value (driver_ID]=> {date => [ cost, rider, rating]}), but that made things a little too complicated.  Instead I set the hash equal to the driver.
dates = ["03022016", "04022016", "05022016"]

driver_1 = {[10, "rd0003", 3] => dates[0],
          [30, "rd0015", 4] => dates[0],
          [45, "rd0003", 2] => dates[2]
        }

driver_2 = {[25, "rd0073", 5] => dates[0],
          [15, "rd0013", 1]=> dates[1],
          [35, "rd0066", 3]=> dates[2],}

driver_3 = {[5, "rd0066", 5]=> dates[1],
          [50, "rd0003", 2]=> dates[2],
        }

driver_4 = {[5, "rd0022", 5] => dates[0],
          [10, "rd0022", 4] => dates[1],
          [20, "rd0073", 5] => dates[2]
        }

#define the earnings and drive count method

def earnings_drive_count(driver_hash, index)
  earnings = 0
  drive_count = 0
  ratings = 0

  driver_hash.each do |info, date|
    earnings += info[0]
    drive_count += 1
    ratings += info[2]
  end
  average_rating = ((ratings.to_f / drive_count).round(2))
  puts "Driver #{index} has earned $#{earnings} with #{drive_count} fares and has an average rating of #{average_rating}."
end

#make data structure

driver_info = [driver_1, driver_2, driver_3, driver_4]

puts driver_info

driver_info.each_with_index do |hash, index|
   earnings_drive_count(hash, index + 1)
 end
