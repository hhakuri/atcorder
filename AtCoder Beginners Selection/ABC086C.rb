t = [0]
x = [0]
y = [0]
r = true
n = gets.to_i
n.times do |i|
  t[i+1], x[i+1], y[i+1] = gets.to_s.split(' ').map(&:to_i)
  a = (x[i+1]-x[i]).abs + (y[i+1]-y[i]).abs
  b = t[i+1]-t[i]
  r = false unless a.even? == b.even? && a<=b
end
puts r ? 'Yes' : 'No'
