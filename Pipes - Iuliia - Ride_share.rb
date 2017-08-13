#my functions
def sum(array, key)
  value = 0
  array.each do |element|
    value += element[key]
  end
  return value
end

def max(array, key)
  max = 0
  array.each do |element|
    if element[key] > max
      max = element[key]
    end
  end
  return max
end

#data strusture with 3 layers
ride_share = {
  DR0001: [
    {date: "3rd Feb 2016", cost: 10, rider: "RD0003", rating: 3},
    {date: "3rd Feb 2016", cost: 30, rider: "RD0015", rating: 4},
    {date: "5th Feb 2016", cost: 45, rider: "RD0003", rating: 2}
  ],
  DR0002: [
    {date: "3rd Feb 2016", cost: 25, rider: "RD0073", rating: 5},
    {date: "4th Feb 2016", cost: 15, rider: "RD0013", rating: 1},
    {date: "5th Feb 2016", cost: 35, rider: "RD0066", rating: 3}
  ],
  DR0003: [
    {date: "4th Feb 2016", cost: 5, rider: "RD0066", rating: 5},
    {date: "5th Feb 2016", cost: 50, rider: "RD0003", rating: 2}
  ],
  DR0004: [
    {date: "3rd Feb 2016", cost: 5, rider: "RD0022", rating: 5},
    {date: "4th Feb 2016", cost: 10, rider: "RD0022", rating: 4},
    {date: "5th Feb 2016", cost: 20, rider: "RD0073", rating: 5}
  ]
}

ride_share.each do |driver, data|

  sum_value = sum(data, :cost)
  max_rating = max(data, :rating)

  puts "The driver \##{driver} has given #{data.length} rides and has made \$#{sum_value}. The highest rating for a single ride has been #{max_rating}."
end
