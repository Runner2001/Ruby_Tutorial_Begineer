greeting = Proc.new do |x|
    puts "Hello #{x}"
end

greeting.call "Runner"
greeting.call "Zed"
greeting.call "Gragas"

# ==================================

greet = Proc.new do |x|
    puts "Welcome #{x}"
end

goodbye = Proc.new do |x|
    puts "Good Bye #{x}"
end

def say(arr, proc)
    arr.each { |x| proc.call x }
end

people = ["David", "Jhon", "Zed"]
say(people, greet)
say(people, goodbye)