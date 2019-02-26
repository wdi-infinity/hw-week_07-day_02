red_line = ["South Station ", "Park Street ", "Kendall", "Central", "Harvard" , "Porter" , "Davis" ,"Alewife" ]
green_line = [ "Government Center" ,"Park Street ", "Boylston" , "Arlington" , "Copley" , "Hynes", "Kenmore"]
orange_line = [ "North Station" , "Haymarket" , "Park Street" , "State" , "Downtown Crossing" , "Chinatown" , "Back Bay ", "Forest Hills"]

#puts red_lien , green_lien ,orange_line



def number_of_station(start_line, start_point, end_line, end_point)
   puts end_line.index(end_point) - start_line.index(start_point) 
  # puts 5 - 10 
end

start_point = "Kendall"
start_line = red_line
end_point = "Alewife"
end_line = red_line

puts number_of_station(start_line, start_point, end_line, end_point)