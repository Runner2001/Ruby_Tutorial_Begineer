def power(base_num, pow_num)
    temp = 1
    pow_num.times do |index|
        temp = temp * base_num
    end
    return temp
end

puts power(2, 3)