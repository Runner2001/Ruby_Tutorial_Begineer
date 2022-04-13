def sayhi(name)
    puts ("Hello From Function " + name)
end

# Function Calling
sayhi("Mario")


# Function Parameter Default Data
def second(name = "no name")
    puts ("Hello " + name )
end

# If Parameter data is not set default data will be use
second()

def cube(num)
    cube = num * num * num
    return cube
end

cube(2)