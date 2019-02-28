
# your solution here

def stops_between_stations (first_line, first_station, last_line, last_station)
   lines={
   "Red" =>["South Station", "Park Street","Kendall","Central",  "Harvard", "Porter",  "Davis",  "Alewife"],
   "Green" =>["Government Center",  "Park Street",  "Boylston",  "Arlington",  "Copley",  "Hynes",  "Kenmore"],
   "Orange" =>["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"],
 }
  if first_line==last_line
   
    total= (lines[first_line].index(first_station)-lines[first_line].index(last_station)).abs
    puts "#{total} stops in total."
  else
  
  #stops for the first line
  first_stops=(lines[first_line].index(first_station)-lines[first_line].index("Park Street")).abs

  #stops for the second line
  second_stops=(lines[last_line].index(last_station)-lines[last_line].index("Park Street")).abs 

  total=first_stops + second_stops

puts "You must travel through the following stops on the #{first_line} line:"
puts first_station + (print_stations first_line , first_station ,"Park Street" ) + " and Park Street"
puts "Change at Park Street."
puts "Your trip continues through the following stops on #{last_line}  Line:" 
puts (print_stations last_line,"Park Street", last_station )+" and #{last_station}"
puts "#{total} stops in total."
end
end




def print_stations( line , first_station , last_station )
   lines={
   "Red" =>["South Station", "Park Street","Kendall","Central",  "Harvard", "Porter",  "Davis",  "Alewife"],
   "Green" =>["Government Center",  "Park Street",  "Boylston",  "Arlington",  "Copley",  "Hynes",  "Kenmore"],
   "Orange" =>["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"],
 }
    str =""
first_index=lines[line].index(first_station)
second_index=lines[line].index(last_station)

 if first_index <= second_index
    stations= lines[line].slice(first_index+1 , second_index-1 )
 else
    stations= lines[line].slice(second_index-1  ,first_index+1)
    stations=stations.reverse
 end
    stations.each{|station| str+= station+", " }
    return str
end

stops_between_stations('Red', 'Alewife', 'Red', 'South Station') 

stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 

# "You must travel through the following stops on the Red line:"
# "South Station and Park Street"
# "Change at Park Street."
# "Your trip continues through the following stops on Green Line:" 
# "Boylston, Arlington, Copley, Hines, and Kenmore."
# "7 stops in total."