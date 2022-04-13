secret_word = "runner"
guess = ""
guess_count = 1
guess_limit = 3
out_of_guess = false

while guess != secret_word && !out_of_guess
    if guess_count <= guess_limit
        puts "Enter Your Guess Word "
        guess = gets.chomp.downcase
        guess_count += 1
    else
        out_of_guess = true
    end
end

if !out_of_guess
    puts "Amazing You Win !!"
else
    puts "Sorry Try Again Later !!"
end