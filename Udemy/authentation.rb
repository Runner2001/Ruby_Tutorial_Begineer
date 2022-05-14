users = [
    {username: "Runner", password: "runner"},
    {username: "Zed", password: "zed"},
    {username: "Gragas", password: "gragas"},
    {username: "Camelia", password: "camelia"},
    {username: "Garen", password: "garen"},
]

puts "Welcome from the authentation"

30.times { print"-" }

puts
puts "This program will compare your enter with the data that we have"
puts "If password and user was right we will gave you back"


uenter = false
attempt = 0
while !uenter
    attempt += 1

    puts "Enter Your Name"
    name = gets.chomp

    puts "Enter Password"
    password = gets.chomp

    users.each{
        |user|
        if user[:username] == name && user[:password] = password
            puts "User Crediential is #{user}"
            break
        else
            puts "Not Found User"
        end
    }

    puts "Press n to quit or any other key to continue"
    ans = gets.chomp
    break if ans == "n" || attempt >= 4

end