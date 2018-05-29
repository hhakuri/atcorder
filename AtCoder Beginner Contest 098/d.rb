n = gets.to_i
a = gets.split(' ').map(&:to_i)
o = n
n.times do |i|
  t = a[i]
  for k in (i+1)...n
    if t&a[k] == 0
      o += 1
      t ^= a[k]
    else
      break
    end
  end
end
puts o
