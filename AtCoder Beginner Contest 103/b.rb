a=gets.chomp.split('')
b=gets.chomp.split('')
c=0
(a.count*2).times do
  if a == b
    c = 1
    break
  end
  a.rotate!(-1)
end
puts c==1 ? 'Yes' : 'No'
