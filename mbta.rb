
# your solution here
def SBS(SL,SS,EL,ES)
    stations{
        "Red"=>["South Station","Park Street","Kendall",
            "Central","Harvard", "Porter","Davis","Alewife"],
        "Green"=>["Government Center", "Park Street", "Boylston",
            "Arlington", "Copley", "Hynes", "Kenmore"],
        "Orange"=>["North Station", "Haymarket", "ParkStreet", 
            "State", "Downtown Crossing", "Chinatown", "Back Bay", 
            "Forest Hills"]
    }
    if SL == EL 
        total_stops = stations.index(SS) - stations.index(ES)
    elsif 

end

upper_case_full_names = students.map do |student|
    full_name = "#{student[:first_name]} #{student[:last_name]}"
    full_name.upcase
end

puts upper_case_full_names.inspect