# first start from one task 

# Park_Street = 'Park Street'
$subway =
 {
    "Red_line": ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
    "Green_line": ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
    "Orange_line": ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
 }

# puts"what is your start line " #<<==== I want to use staline to make it like input user

# staline = gets.chomp
# puts staline
# puts" travling in same line ? true or false"
# answer =gets.chomp.to_b 
# if answer 
  #map most incloude 'Park Street'
  #map for coleict to array
# else 
  #stay with one line with out map 

  start_line = [] 
  last_line = []
  
# class Journy_info
#   attr_accessor :station
#   attr_accessor :line
#   def initialize(line,station)
#     @line = line
# @station = station
#   end 
#     def what_station
#       puts"||type your first Station"
#       station = gets.chomp 
#   puts station
#     puts"||in which line ?"
#     line= gets.chomp
#     if line == "Red_line"
#       start_line = subway[:Red_line]
      
#     elsif line == "Green_line"
#       start_line = subway[:Green_line]
  
#       elsif line == "Orange_line"
#         start_line = subway[:Orange_line]
#     end
# end
# end

# fun_station1 = Journy_info.new("Red_line","South Station")
# puts fun_station1.what_station
puts"||type your fisrt Station"
 first_sta = gets.chomp 
puts first_sta
  puts"||in which line ?"
  line_coloer= gets.chomp
  if line_coloer == "Red_line"
    start_line = $subway[:Red_line]
    
  elsif line_coloer == "Green_line"
    start_line = $subway[:Green_line]

    elsif line_coloer == "Orange_line"
      start_line = $subway[:Orange_line]
  end
 #1rvrs method
  #put it in function 

 




  puts"||type your end Station"
  last_sta = gets.chomp 
 puts last_sta
   puts"||in which line ?"
   line_coloer= gets.chomp
   if line_coloer == "Red_line"
     last_line = $subway[:Red_line]
     
   elsif line_coloer == "Green_line"
    last_line = $subway[:Green_line]
 
     elsif line_coloer == "Orange_line"
      last_line = $subway[:Orange_line]
   end
 
if start_line == last_line
  puts "§§ you are in same line §§"
  start_station = start_line.index(first_sta)
  end_station = start_line.index(last_sta)

  puts start_line[start_station..end_station]
  puts start_line[start_station..end_station].length

else 

  start_station = start_line.index(first_sta)
  park_Street = start_line.index("Park Street")

  end_station = last_line.index(last_sta) 
  last_park_Street = last_line.index("Park Street")

  if start_station > park_Street
    up= park_Street 
    down= start_station 
  else 
    up= start_station 
    down= park_Street  
  end 

  if start_station > park_Street
    endup= park_Street 
    enddown= start_station 
  else 
    endup= start_station 
    enddown= park_Street  
  end 
  puts "====================== \n
   your journy start from#{start_line[up..down]} to #{last_line[endup..enddown]} \n
   ======================"

end 


    #  puts "your on line " ,  start_line

    #  puts "your on last line " ,  last_line

  
# else
  
# end
# check if the user enter "Park Street"
# puts" which line? green/ red/ orange "
#  get 
# 

# puts"put ur end Station " 
# last_sta = gets.chomp.to_s
# puts last_sta

# start_station = subway[:Red_line].index(first_sta) # <<=== you can see that I put sta as index of subway array

# end_station = subway[:Red_line].index(last_sta)


# # stations = subway[:Red_line]; 
# st

# if start_station < end_station
#     total_point_in_redLine = subway[:Red_line][start_station..end_station] 
#     total_number_in_redLine = subway[:Red_line][start_station..end_station].length 
#   else 
#     total_point_in_redLine = subway[:Red_line][end_station..start_station] 
#     total_number_in_redLine = subway[:Red_line][end_station..start_station].length 
#   end




# puts "you will pass these Stations"
# puts total_point_in_redLine
# puts "total number of Stations is "
# puts total_number_in_redLine
 
