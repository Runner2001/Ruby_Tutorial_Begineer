text = ["mario", "runner", "lugui", "zed"]

begin
    num = 10 / 0
    text["shon"]
rescue ZeroDivisionError
    puts "You can't divided integer with 0"
rescue TypeError => e
    puts e
end