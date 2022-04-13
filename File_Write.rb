user_enter = ""

while user_enter != "end"
    puts "Enter what you want or end for close"
    user_enter = gets.chomp()

    if user_enter != "end"
        File.open("text.txt", "a") do |item|
            item.write("\n#{user_enter}")
        end
    else
        break        
    end
end