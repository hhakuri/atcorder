gets
a=gets.split(' ').map(&:to_i)
m=a.to_a.inject(:lcm)
p a.inject(0){|sum, e| sum+((m-1) % e)}
#m.times do |t|
#  s << a.inject(0){|sum, e| sum+((t+1) % e)}
#end
p s
