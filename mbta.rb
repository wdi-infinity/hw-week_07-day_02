
def stops_between_stations(start_line, start_station,end_line,end_station)
  subway_line= {
      Red_line:["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
      Green_line:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
      Orange_line:["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
      }

  stops_count=0
  index=0
  arr_all_value=[]

  # stops 0
  if start_station == end_station
      stops_count=0
      puts stops_count
  else # store all value in one array
    subway_line.each { |key,value|
    value.each {|val| 
    arr_all_value.push(val)
    }
  }
  # elsif start_line == end_line
  if start_line==end_line
    # if <
    if arr_all_value.index(start_station) <  arr_all_value.index(end_station)
      arr_all_value[arr_all_value.index(start_station)..arr_all_value.index(end_station)].each { |val| 
            if val != end_station
            stops_count+=1 # add 1
            end
          }
    else
      # if >
     arr_all_value[arr_all_value.index(end_station)..arr_all_value.index(start_station)].each { |val| 
       if val != start_station
        stops_count+=1
       end
       }
    end
    # start_line != end_line
  else
    if arr_all_value.index(start_station) <  arr_all_value.index(end_station)
      arr_all_value[arr_all_value.index("Park Street")..arr_all_value.index(end_station)].each { |val| 
            if val != end_station
            stops_count+=1
            end
          }
    end
  end
  
  puts stops_count
  end
end # end function

# stops_between_stations('Red_line', 'South Station', 'Green_line', 'Copley') 

#allow the user to input their start line, start station, end line, and end station.
puts "plz input your start line"
start_line=gets.chomp

puts "plz input your start station"
start_station=gets.chomp

puts "plz input your  end line"
end_line=gets.chomp

puts "plz input your end station"
end_station=gets.chomp

stops_between_stations start_line,start_station,end_line,end_station










#\\\\\

# create hash and stor all  three line insid it


# def stops_between_stations(start_line, start_station,end_line,end_station)
#     subway_line= {
#         Red_line:["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
#         Green_line:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
#         Orange_line:["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
#         }

#     stops_count=0
#     index=0
#     # stops 0
#     if start_station == end_station
#         stops_count=0
#     else # elsif start_line == end_line
#       subway_line.each { |key,value|
#       puts value
#       value.each {|val| 
#       puts value
#        if val == start_station
#         if value.index(start_station) < value.index(end_station)
#           value[value.index(start_station)..value.index(end_station)].each { |val| 
#             if val != end_station
#             stops_count+=1
#             end
#           }
#         else
#           value[value.index(end_station)..value.index(start_station)].each { |val| 
#           if val != end_station
#           stops_count+=1
#           end
#         }
#         end# <
#        else
#         index+=1
#       end
#     }
#     }# block subway_line.each
#     end 
#     puts stops_count
# end # end function

# stops_between_stations('Red_line', 'Kendall', 'Red_line', 'Davis') 

