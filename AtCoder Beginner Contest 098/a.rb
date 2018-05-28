a, b = gets.split(' ').map(&:to_i)
c = []
c[0] = a + b
c[1] = a - b
c[2] = a * b
puts c.max
