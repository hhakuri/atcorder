a = gets.to_i
b = gets
c = []
a.times do |i|
  b1 = b.slice(0..i)
  b2 = b.slice(i+1..a)
  c[i] = b1.delete(b1.delete(b2)).split('').uniq.count
end
puts c.max
