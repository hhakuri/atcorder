a,b=gets.split(' ')
c=b.to_i-a.to_i
puts (1...c).inject(:+)-a.to_i
