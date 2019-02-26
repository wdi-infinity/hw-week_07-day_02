red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
green = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
orange = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]

# your solution here
# def stops_between_stations(start_line, start_station, end_line, end_station)
#     start_j = start_line.index(start_station)
#     end_j = end_line.index(end_station)
 
#  if start_line == endLine 
#     result = (start_j  -  end_j).abs
#     puts result
#  else
# # will return the subtraction between start_ponit and start_station and Add with second station also subtraction between start_ponit and start_station 
#  end

# end


puts "What line will you take? red, green, or orange"
    start_line = gets.chomp.downcase

puts "What Station will you get on at?"
    start_station = gets.chomp

puts "What line will you get off from? red, green, or orange"
    end_line = gets.chomp.downcase
    
puts "What Station will you get off at?"
    end_station = gets.chomp
 
    start_j = start_line.index(start_station)
    end_j = end_line.index(end_station)
 
 if start_line == endLine 
    result = (start_j  -  end_j).abs
    puts result
 else
# will return the subtraction between start_ponit and start_station and Add with second station also subtraction between start_ponit and start_station 
 end





