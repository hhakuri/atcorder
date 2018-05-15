n,a,b=gets.split(' ').map(&:to_i)
k=0
n.times do |t|
  c = (t+1).to_s.split('').map(&:to_i).inject(:+)
  k+=(t+1) if a <= c && c <= b
end
puts k
