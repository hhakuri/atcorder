n = gets.to_i
a = gets.split(' ').map(&:to_i)
o = 0
l = 0
t = 0
for k in 0...n
  if t&a[k] == 0
    l += 1
    t ^= a[k]
  else
    t = a[k]
    o += (1..l).to_a.inject(:+)
    l = 1
    p k
  end
end
o += (1..l).to_a.inject(:+)
puts o
