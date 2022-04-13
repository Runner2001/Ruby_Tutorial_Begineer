puts "Enter First Number: "
num1 = gets.chomp.to_f

puts "Enter Operator: "
op = gets.chomp

puts "Enter Second Number: "
num2 = gets.chomp.to_f

# Function Define
def sum(num1, num2)
    return num1 + num2
end

def sub(num1, num2)
    return num1 - num2
end

def multiple(num1, num2)
    return num1 * num2
end

def div(num1, num2)
    return num1 / num2
end

# Condition Filtering
if op == "+"
    puts sum(num1, num2)
elsif op == "-"
    puts sub(num1, num2)
elsif op = "*"
    puts multiple(num1, num2)
else
    puts div(num1, num2)
end