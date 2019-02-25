
Red_line = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
Green_line = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
Orange_line = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]

def stops_between_stations (line1,start_stop,line2,end_stop)
    count=0
    start_s = line1.index(start_stop)
    end_s = line2.index(end_stop)
    if start_s <= end_s
    for i in start_s...end_s do
        count=count+1
        # puts line1[i]
        # puts line2[i]
      end
        puts count 
    
else
    
        for i in end_s...start_s do
            count=count+1
            # puts line1[i]
            # puts line2[i]
          end
            puts count
            
        end
end
stops_between_stations(Red_line,"South Station",Green_line,"Arlington",)