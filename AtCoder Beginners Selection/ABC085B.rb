n=gets.to_i
a=[]
n.times do
  a.push(gets.to_i)
end
puts a.uniq.count
