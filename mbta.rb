
# your solution here
def stops_between_stations {
  Red_line => ["South Station","Park Street","Kendal",
            "Central","Harvard","Porter","Davis","Alewife"],
  Green_line =>["Government Center","Park Street","Boylston"
               "Arlington","Copley","Hynes","Kenmove"],
 Orange_lne =>["North Station","Haymarket","park Street","State",
              "Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
            }
          end
              
#station_1('Red', 'Alewife', 'Red', 'Alewife') # 0
#station_2('Red', 'Alewife', 'Red', 'South Station') # 7
#station_3('Red', 'South Station', 'Green', 'Kenmore') # 6
startPoint = ""
stopPoint = ""
trip = ""

 def line = Red_line.map do |station|station_1
    if (startPoint == "Red" && stopPoint == "Alewife")
      puts "#{line}the user has start trip#{red} and end trip #{Alewif}"
    end
  end

def line2 = Green_line.map do |station|station_2
  if (startPoint == "Red" && stopPoint == "South Station")
    puts "#{line} the user has start trip #{Red} and end trip #{South Station}"
  end
end 

def line3 = Orange_lne.map do |station|station_3
 if (startPoint =="Red" && startPoint == "Kenmore")
  puts "#{line} the user has start trip#{Red} and end trip #{kenmore}"
end

#Tell the user the number of stops between stations AND the stops IN ORDER that they will pass through or change at.
#stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 
# "South Station and Park Street"
def num_of_stops = mbta.calculate_stops('Red', 'South Station', 'Green', 'Kenmore')
  if ('Red' == startPoint && 'Kenmore' == stopPoint) 
puts "number of stops from haymarket to bolyston is #{num_of_stops}"
  end
# "Change at Park Street."
# "Your trip continues through the following stops on Green Line:" 
# "Boylston, Arlington, Copley, Hines, and Kenmore."
# "7 stops in total."
