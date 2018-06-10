n = gets.to_i
a = gets.split(' ').map(&:to_i)
o = 0
n.times do |i|
for k in i..(n-1)
if a[i..k].inject(:^) == a[i..k].inject(:+)
o +=1
else
p k
end
end
end
puts o
