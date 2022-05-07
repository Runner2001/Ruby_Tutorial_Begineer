# Struct is the short way to creat class

Point = Struct.new(:x, :y)

destination = Point.new(15,50)
puts destination.x