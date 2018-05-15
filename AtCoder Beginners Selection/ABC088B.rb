gets
c=gets.split(' ').map(&:to_i)
a=0
b=0
c.sort!.reverse!
c.each_with_index do |e, i|
  i.even? ? a+=e : b+=e
end
puts a-b
