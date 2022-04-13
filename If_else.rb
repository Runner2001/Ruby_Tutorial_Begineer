name = "Ruby Learning"

if name.include? "r"
    puts "Your String name include R"
elsif name.gsub!(/a/ , "r")
    puts "Your name is now #{name}"
else
    puts "There is no r in name"
end