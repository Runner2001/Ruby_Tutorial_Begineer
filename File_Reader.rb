File.open("text.txt", "r") do |line|
    puts line.read()
end

file = File.open("text.txt")
puts file.readlines()