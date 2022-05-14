area_codes = {
    "Yangon" => "256",
    "Insein" => "324",
    "Hlaing" => "213",
    "Mayangone" => "236",
    "SangChung" => "987",
    "KoughMyoung" => "235"
}

def getCity(location)
    location.keys
end

def getCode(hash, location)
    hash[location]
end

loop do
    puts "Would you like to start (Y/N)"
    ans = gets.chomp.downcase
    break if ans != "y"

    puts getCity(area_codes)
    puts "Enter your locations"
    location = gets.chomp

    if area_codes.include?(location)
        puts "Here is you code for #{location} is #{getCode(area_codes, location)}"
    else
        puts "No Record Found"
    end

end