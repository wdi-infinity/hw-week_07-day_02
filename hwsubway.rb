

Red_line =["South Station" ,"Park Street" ,"Kendall" ,"Central" ,"Harvard" ,"Porter" ,"Davis" ,"Alewife"]
Green_line =["Government Center","Park Street" , "Boylston" ,"Arlington" ,"Copley" ,"Hynes" , "Kenmore"]
orange_line =[ "North Station" ,"Haymarket" ,"Park Street" ,"State" ,"Downtown Crossing" ,"Chinatown" ,"Back Bay" ,"Forest Hills"]
$intersect = "Park Street"

#in case one line :
# Red line 
def subway_trips(start_line ,start_station ,end_station ,end_line)
    if start_line == end_line
        return (start_line.index(start_station) - end_line.index(end_station)).abs
    else
      return  (start_line.index(start_station) - start_line.index($intersect)).abs + (end_line.index(end_station) - end_line.index($intersect)).abs
    end

    end 

 
p subway_trips(Red_line,"South Station","Hynes",Green_line)









