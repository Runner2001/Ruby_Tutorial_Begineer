t = Time.now
puts t

# Year, month, day
puts t.year
puts t.month
puts t.day

# Custom date
custom_time = Time.new(2001, 3, 25)

# day of week: 0 is sunday
puts custom_time.wday

# day of year
puts custom_time.yday