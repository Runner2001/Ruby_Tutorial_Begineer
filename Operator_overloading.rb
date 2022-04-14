class Shape
    attr_accessor :h, :w
    def initialize(h, w)
        @h = h
        @w = w
    end
    def +(other)
        Shape.new(self.h+other.h, self.w+other.w)
    end
end

a = Shape.new(7, 4)
b = Shape.new(9, 18)

c = a + b
puts c.h
puts c.w