def multiple(num)
    if num <= 1
        return 1
    else
        return num * multiple(num - 1)
    end
end

puts multiple(5)