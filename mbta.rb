


green_line = [
    "Government Center" ,
"Park Street" ,
"Boylston" ,
"Arlington", 
"Copley",
"Hynes",
"Kenmore"
]

red_line = [
"South Station" ,
"Park Street",
"Kendall",
"Central",
"Harvard",
"Porter",
"Davis",
"Alewife"
]


orange_line = [
    "North Station",
"Haymarket",
"Park Street",
"State",
"Downtown Crossing",
"Chinatown",
"Back Bay",
"Forest Hills"
]


def stops_between_stations(line1, start_dis, line2, end_dis)

    
    if line1 == line2
        return (line1.index(start_dis) - line2.index(end_dis)).abs
    else
      return  (line1.index(start_dis) - line1.index("Park Street")).abs + (line2.index(end_dis) - line2.index("Park Street")).abs
    end
 
    end



puts stops_between_stations(red_line ,'South Station' ,green_line, 'Kenmore')
