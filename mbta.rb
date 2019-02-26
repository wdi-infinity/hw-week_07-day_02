
# your solution here
# lines = {
# red:['South Station', "Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
# green:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
# orange:["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
# }
# count=0
def stops_between_stations(start_line ,start_station , end_line , end_station )
lines = {
'Red'=>['South Station', "Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
'Green'=>["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
'Orange'=>["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}
p="Park Street"
# count=0
start_stop=lines[start_line].index(start_station)
end_stop=lines[end_line].index(end_station)
    if start_line == end_line 
    return (start_stop - end_stop).abs
    # count+=1
    else 
    return ((start_stop - lines[start_line].index(p)).abs) +((end_stop - lines[end_line].index(p)).abs)
end
end




# def stops_between_stations(start_line ,start_station , end_line , end_station )
# puts lines.count
# end

# def stops_between_stations(start_line ,start_station , end_line , end_station )
# count=0
# start_stop=start_line.index(start_station)
# end_stop=end_line.index(end_station)
#     if start_line == end_line 
#     for i in start_stop...end_stop do
#     count+=1
#     end
# end
# end